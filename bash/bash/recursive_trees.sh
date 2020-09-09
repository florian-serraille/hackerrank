#!/bin/bash

function init_matrix(){
	
	for ((i = 0; i < $ROW_SIZE; i++)); do
		for ((j = 0; j < $COLUMNS_NUMBER; j++)); do
			matrix[$i, $j]=$DEFAULT_CHARACTER
		done
		matrix[$i, $(($COLUMNS_NUMBER - 1))]+=\\n
	done
}


function update_matrix(){

	local SEGMENT_SIZE=$1
	local X_OFFSET=$2
	local Y_OFFSET=$3
	local CURRENT_ITERATION=$(( $4 + 1))
	
	local X_POS_R_BRANCH
	local X_POS_L_BRANCH


	#echo "--------------------------------------------------------------"
	#echo "SEGMENT SIZE -> $SEGMENT_SIZE"
	#echo "X_OFFSET -> $X_OFFSET"
	#echo "Y_OFFSET -> $Y_OFFSET"
	#cho "CURRENT_ITERATION -> $CURRENT_ITERATION OVER $ITERATION_NUMBER"

	# straight segment
	for ((i = 1; i <= $SEGMENT_SIZE; i++)); do
		matrix[$(($Y_OFFSET - $i)), ${X_OFFSET}]=$DRAW_CHAR
	done

	# oblique segment
	for ((i = $SEGMENT_SIZE, j=0; i <= $(( $SEGMENT_SIZE * 2 )); i++, j++)); do
		
		X_POS_R_BRANCH=$(( ${X_OFFSET} + $j))
		X_POS_L_BRANCH=$(( ${X_OFFSET} - $j))
		
		matrix[$(($Y_OFFSET - $i)), $X_POS_R_BRANCH]=$DRAW_CHAR
		matrix[$(($Y_OFFSET - $i)), $X_POS_L_BRANCH]=$DRAW_CHAR

	done

	if [[ $CURRENT_ITERATION -lt $ITERATION_NUMBER ]]; then
		update_matrix $(( $SEGMENT_SIZE / 2 )) $X_POS_L_BRANCH $(( $Y_OFFSET / 2)) $CURRENT_ITERATION
		update_matrix $(( $SEGMENT_SIZE / 2 )) $X_POS_R_BRANCH $(( $Y_OFFSET / 2)) $CURRENT_ITERATION
	fi
}

function print_matrix(){
	
	for ((i = 0; i < $ROW_SIZE; i++)); do
		for ((j = 0; j < $COLUMNS_NUMBER; j++)); do
			printf '%b' "${matrix[$i, $j]}"
		done
	done
}

function main(){

	ROW_SIZE=63
	COLUMNS_NUMBER=100
	DEFAULT_CHARACTER=_
	SEGMENT=16
	DRAW_CHAR=1


	declare -A matrix
	read ITERATION_NUMBER

	init_matrix
	update_matrix $SEGMENT $(( $COLUMNS_NUMBER / 2 - 1 )) $ROW_SIZE
	print_matrix
}

main
