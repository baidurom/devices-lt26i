.class public Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatingClickListener"
.end annotation


# instance fields
.field private mDelegate:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;->mDelegate:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;->mDelegate:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setDelegate(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;->mDelegate:Landroid/view/View$OnClickListener;

    .line 89
    return-void
.end method
