.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$15;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$15;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$15;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteListDialog()V

    .line 905
    return-void
.end method
