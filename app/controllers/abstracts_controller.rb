class AbstractsController < ApplicationController
  def home
  end

  # These are abstract methods that can be used by generic child controllers.
  def create
    object = controller_name.classify.constantize.new(send("#{controller_name.singularize.downcase.underscore}_params"))
    if object.save
      redirect_to eval("#{controller_name}_path"), notice: t('helpers.notice.created', model: t("activerecord.models.#{controller_name.singularize.downcase.underscore}.one"))
    else
      render :new
    end
  end

  def destroy
    if instance_eval("@#{controller_name.singularize.downcase}").destroy
      redirect_to eval("#{controller_name}_url"), notice: t('helpers.notice.deleted', model: t("activerecord.models.#{controller_name.singularize.downcase.underscore}.one"))
    else
      redirect_to eval("#{controller_name}_url"), notice: t('helpers.notice.cannot_delete', model: t("activerecord.models.#{controller_name.singularize.downcase.underscore}.one"))
    end
  end

  def edit
  end

  def index
    # Equivalent of @house_buyers = HouseBuyer.all
    objects = controller_name.classify.constantize.all
    instance_variable_set("@#{controller_name}", objects)
  end

  def new
    object = (controller_name.classify.constantize).new
    instance_variable_set("@#{controller_name.singularize.downcase}", object)
  end

  def show
  end

  def update
    updated_params = send("#{controller_name.singularize.downcase.underscore}_params")
    if instance_eval("@#{controller_name.singularize.downcase}").update(updated_params)
      redirect_to eval("#{controller_name}_path"), notice: t('helpers.notice.updated', model: t("activerecord.models.#{controller_name.singularize.downcase.underscore}.one"))
    else
      render :edit
    end
  end
end