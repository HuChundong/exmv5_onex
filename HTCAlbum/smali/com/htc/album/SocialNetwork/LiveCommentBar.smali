.class public Lcom/htc/album/SocialNetwork/LiveCommentBar;
.super Lcom/htc/album/modules/ui/widget/ControlBase;
.source "LiveCommentBar.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LiveCommentBar"


# instance fields
.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3
    .parameter "nID"
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/ControlBase;-><init>(ILandroid/content/Context;I)V

    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LiveCommentBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LiveCommentBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 27
    const-string v0, "LiveCommentBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LiveCommentBar][setVisibility]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/widget/ControlBase;->setVisibility(I)V

    .line 29
    return-void
.end method

.method public toggleVisibility()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "LiveCommentBar"

    const-string v1, "[HTCAlbum][LiveCommentBar][toggleVisibility]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-super {p0}, Lcom/htc/album/modules/ui/widget/ControlBase;->toggleVisibility()V

    .line 37
    return-void
.end method
