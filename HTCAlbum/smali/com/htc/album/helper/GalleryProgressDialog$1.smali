.class Lcom/htc/album/helper/GalleryProgressDialog$1;
.super Ljava/lang/Object;
.source "GalleryProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/GalleryProgressDialog;->initialProgresDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/GalleryProgressDialog;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/GalleryProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$000(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc:id/progress"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, progressBarID:I
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$000(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc:id/progress_number"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, progressNumberID:I
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$000(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc:id/progress_percent"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, progressPercentID:I
    iget-object v4, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v3, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    #setter for: Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$102(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 69
    iget-object v4, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v3, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v4, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$202(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    iget-object v4, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v3, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v4, v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$302(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$100(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-nez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    iget-object v4, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I
    invoke-static {v4}, Lcom/htc/album/helper/GalleryProgressDialog;->access$400(Lcom/htc/album/helper/GalleryProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/GalleryProgressDialog;->setMax(I)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/htc/album/helper/GalleryProgressDialog;->access$100(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/GalleryProgressDialog$1;->this$0:Lcom/htc/album/helper/GalleryProgressDialog;

    #getter for: Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I
    invoke-static {v4}, Lcom/htc/album/helper/GalleryProgressDialog;->access$400(Lcom/htc/album/helper/GalleryProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0
.end method
