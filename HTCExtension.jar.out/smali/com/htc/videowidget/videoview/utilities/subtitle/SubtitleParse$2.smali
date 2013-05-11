.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$2;
.super Ljava/lang/Object;
.source "SubtitleParse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->changeSubtitle(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[changeSubtitle] Run parse thread"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->callParseSubtitle()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    .line 268
    return-void
.end method
