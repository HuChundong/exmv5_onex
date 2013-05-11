.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;
.super Ljava/lang/Object;
.source "SubtitleMenuList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 169
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I
    invoke-static {v0, p3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;I)I

    .line 172
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->notifyDataSetChanged()V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->val$intent:Landroid/content/Intent;

    const-string v1, "subtitle_path"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->val$intent:Landroid/content/Intent;

    const-string v1, "subtitle_byte_array"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mByteArray:[B
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->val$intent:Landroid/content/Intent;

    const-string v1, "subtitle_charset"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;->val$intent:Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
