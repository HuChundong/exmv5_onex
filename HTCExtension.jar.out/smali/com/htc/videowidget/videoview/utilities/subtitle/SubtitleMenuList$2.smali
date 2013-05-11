.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;
.super Ljava/lang/Object;
.source "SubtitleMenuList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subtitle_list_return_index"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v1, "subtitle_charset"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OK Button Click] Currect charset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->setResult(ILandroid/content/Intent;)V

    .line 204
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    const/4 v2, 0x1

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isResultOK:Z
    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$502(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Z)Z

    .line 205
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->finish()V

    .line 206
    return-void
.end method
