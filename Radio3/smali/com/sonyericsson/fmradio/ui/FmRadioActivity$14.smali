.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;
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

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/widget/EditText;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 895
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 897
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->addFavorite(ILjava/lang/String;)V

    .line 899
    :cond_0
    return-void
.end method
