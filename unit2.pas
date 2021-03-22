unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm_engin }

  TForm_engin = class(TForm)
    Button_ln_e: TButton;
    Button_del: TButton;
    Button_ce: TButton;
    Button_c: TButton;
    Button_1: TButton;
    Button_percent: TButton;
    Button_squaring: TButton;
    Button_changing_sign: TButton;
    Button_0: TButton;
    Button_dot: TButton;
    Button_cos: TButton;
    Button_sin: TButton;
    Button_sqrt: TButton;
    Button_division: TButton;
    Button_multipl: TButton;
    Button_diff: TButton;
    Button_sum: TButton;
    Button_equally: TButton;
    Button_tg: TButton;
    Button_ctg: TButton;
    Button_abs: TButton;
    Button_factorial: TButton;
    Button_stepen: TButton;
    Button_2: TButton;
    Button_ln_10: TButton;
    Button_3: TButton;
    Button_4: TButton;
    Button_5: TButton;
    Button_6: TButton;
    Button_7: TButton;
    Button_8: TButton;
    Button_9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    M_1_calc: TMenuItem;
    M_rus: TMenuItem;
    M_eng: TMenuItem;
    M_3_1_help: TMenuItem;
    M_3_1_about: TMenuItem;
    M_2_mode: TMenuItem;
    M_3_help: TMenuItem;
    M_1_copy: TMenuItem;
    M_1_paste: TMenuItem;
    M_2_type: TMenuItem;
    M_2_lang: TMenuItem;
    M_base: TMenuItem;
    M_engin: TMenuItem;
    procedure ButtonClick(Sender: TObject);
    procedure Button_absClick(Sender: TObject);
    procedure Button_cClick(Sender: TObject);
    procedure Button_ceClick(Sender: TObject);
    procedure Button_changing_signClick(Sender: TObject);
    procedure Button_delClick(Sender: TObject);
    procedure Button_equallyClick(Sender: TObject);
    procedure Button_factorialClick(Sender: TObject);
    procedure Button_ln_10Click(Sender: TObject);
    procedure Button_ln_eClick(Sender: TObject);
    procedure Button_percentClick(Sender: TObject);
    procedure Button_sqrtClick(Sender: TObject);
    procedure Button_squaringClick(Sender: TObject);
    procedure Button_stepenClick(Sender: TObject);
    procedure Button_sumClick(Sender: TObject);
    procedure M_baseClick(Sender: TObject);



  private

  public

  end;

var
  Form_engin: TForm_engin;
  x,y,z,a:real;
  sign:string;


implementation
 uses Unit1;
{$R *.lfm}

{ TForm_engin }

procedure TForm_engin.ButtonClick(Sender: TObject);
begin
  if Edit1.Text = '0' then Edit1.Text:=(Sender as TButton).Caption
  else Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm_engin.Button_absClick(Sender: TObject);
begin
  x:= StrToFloat(Edit1.Text);
  z:=abs(x);
  Edit1.Text:=FloatToStr(z);
end;

procedure TForm_engin.Button_sumClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TButton).Caption;
                        end;
end;

procedure TForm_engin.M_baseClick(Sender: TObject);
begin
  Form_base.Show;
  Form_engin.Hide;
end;

//function pow(a,x:real):real;              //эээ
//var t:real;i:integer;
//begin
 // t:=a;
  //for i:=1 to x-1 do t:=t*a;
  //pow:=t;
//end;
procedure TForm_engin.Button_equallyClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                            y:= StrToFloat(Edit1.Text);//забрать второе значение
                            Edit1.Clear;
                            case sign of
                              '+': z:=x+y;
                              '-': z:=x-y;
                              '*': z:=x*y;
                              '/': z:=x/y;
                             // 'x^y': z:=pow(x,y);
                            end;
                            Edit1.Text:=FloatToStr(z);
                        end;
end;

procedure TForm_engin.Button_cClick(Sender: TObject);
begin
  Edit1.Clear;
  x:=0;y:=0;z:=0;
end;

procedure TForm_engin.Button_ceClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm_engin.Button_changing_signClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=-x;
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_delClick(Sender: TObject);
var l:byte;
    s:string;
begin
    s:=Edit1.Text;
    l:=length(s);
    delete(s,l,1);
    Edit1.Text:=s;
end;

procedure TForm_engin.Button_factorialClick(Sender: TObject);
begin

end;

procedure TForm_engin.Button_ln_10Click(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=ln(x)/ln(10);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_ln_eClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=ln(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_percentClick(Sender: TObject);
begin
  //сделать
end;

procedure TForm_engin.Button_sqrtClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqrt(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_squaringClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqr(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_stepenClick(Sender: TObject);
begin
    if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TButton).Caption;
                        end;
end;


{ TForm_engin }



end.

