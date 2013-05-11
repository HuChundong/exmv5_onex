.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$imgName:Ljava/lang/String;

.field final synthetic val$imgSubName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgSubName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->access$200(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 865
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 844
    .local v6, newName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 846
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 851
    :cond_2
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00b8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 855
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 860
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgSubName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 863
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iget-object v1, v1, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iget-object v2, v2, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mPos:I
    invoke-static {v3}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->access$300(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v4}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->access$200(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;->val$imgSubName:Ljava/lang/String;

    #calls: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->access$400(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
