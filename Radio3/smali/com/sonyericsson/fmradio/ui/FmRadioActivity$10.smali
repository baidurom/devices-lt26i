.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteListDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$currentFrequency:I

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$formatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/widget/ArrayAdapter;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$adapter:Landroid/widget/ArrayAdapter;

    iput p3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$currentFrequency:I

    iput-object p4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$formatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iput-object p5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 809
    .local v0, name:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$formatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$currentFrequency:I

    new-instance v5, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v5, v0}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V

    .line 811
    .local v1, template:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteDetailsDialog(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)V

    .line 813
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #template:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 814
    return-void

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;->val$currentFrequency:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
