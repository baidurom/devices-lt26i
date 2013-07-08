.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;
.super Landroid/app/Dialog;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartupProgressDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 942
    const v0, 0x7f090001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 943
    return-void
.end method

.method static synthetic access$600(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private static show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 946
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;-><init>(Landroid/content/Context;)V

    .line 947
    .local v0, dialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->setCancelable(Z)V

    .line 950
    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 951
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->show()V

    .line 953
    return-object v0
.end method
