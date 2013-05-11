.class Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;
.super Ljava/lang/Object;
.source "EncodingList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v4, 0x1

    .line 226
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSelEncodingIndex:I
    invoke-static {v1, p3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;I)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subtitle_charset"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->setResult(ILandroid/content/Intent;)V

    .line 230
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[User Click Choice]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    iget-object v1, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->notifyDataSetChanged()V

    .line 232
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->finish()V

    .line 233
    return-void
.end method
