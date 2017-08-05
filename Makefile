install:
	mkdir -p ${HOME}/bin
	cp bin/* ${HOME}/bin
	cp .bashrc* ${HOME}
	@echo "-----------------------------------------------------------"
	@echo "Please run the following command to apply the installation:"
	@echo ""
	@echo "source ~/.bashrc"
	@echo ""

