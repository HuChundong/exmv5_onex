.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;
.super Ljava/lang/Object;
.source "SubtitleParse.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFileFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 893
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, subtitleName:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 896
    .local v1, extStartIndex:I
    if-gez v1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v3

    .line 899
    :cond_1
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, extName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FileFilter] fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".srt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".sami"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".smi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    :cond_2
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FileFilter] fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
