class ListsController < ApplicationController
  # On utilise le before_action pour charger la liste avant d'exécuter les actions show, edit, update, destroy
  before_action :set_list, only: [:show, :edit]

  def index
    # Récupère toutes les listes
    @lists = List.all
  end

  def show
    # @list est déjà défini par le before_action
  end

  def new
    # Crée une nouvelle instance de List pour afficher le formulaire
    @list = List.new
  end

  def create
    # Crée une nouvelle liste avec les paramètres du formulaire
    @list = List.new(list_params)
    if @list.save
      # Si la liste est sauvée avec succès, redirige vers la page de cette liste
      redirect_to list_path(@list)
    else
      # Si l'enregistrement échoue, recharge la page new avec un statut d'erreur
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # L'action 'edit' permettra à l'utilisateur de voir un formulaire pour modifier la liste
    # @list est déjà défini par le before_action
  end

  private

  # Charge la liste en fonction de l'id dans les paramètres (avant chaque action spécifique)
  def set_list
    @list = List.find(params[:id])
  end

  # Permet de définir quels paramètres sont autorisés pour la création ou mise à jour d'une liste
  def list_params
    params.require(:list).permit(:name, :image_url)
  end
end
