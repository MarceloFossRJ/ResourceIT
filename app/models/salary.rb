class Salary < ActiveRecord::Base
  belongs_to :employee

  attr_accessible :base_year, :employee_id, :month_salary, :start_date, :daily_cost, :monthly_cost

  validates_presence_of :base_year, :employee_id, :month_salary, :start_date
  validates :base_year, :length => { :is => 4 }

  def daily_cost

  end

  def monthly_cost
	dec_terc = self.month_salary*0.0833
	ferias = self.month_salary*0.1111
	inss = self.month_salary*0.2
	sat = self.month_salary*0.03
	sal_educacao = self.month_salary*0.025
	incra = self.month_salary*0.033
	fgts = self.month_salary*0.08
	fgts_prov_multa_rec = self.month_salary*0.04
	prev_ferias = self.month_salary*0.0793
	
	monthly_cost = self.month_salary + dec_terc + ferias + inss + sat + sal_educacao + incra + fgts + fgts_prov_multa_rec + prev_ferias

  end

  def daily_cost
	monthly_cost/20
  end  
end
