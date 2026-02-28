module map_hub(
	input  MapIn mai,
	output MapOut mao
);

	
	assign mao = 
	mai.cfg.map_idx == 253 ? map_out_253 :
	map_out_nom;
		
	MapOut map_out_nom;
	map_nom mnom(mai, map_out_nom);

	MapOut map_out_253;
	map_253 m253(mai, map_out_253);
	
endmodule