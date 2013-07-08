.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteDetailsDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$editMode:Z

.field final synthetic val$result:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/app/AlertDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;->val$result:Landroid/app/AlertDialog;

    iput-boolean p3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;->val$editMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;->val$result:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;->val$editMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 931
    return-void
.end method
