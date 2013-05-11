.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;
.super Ljava/lang/Object;
.source "SubtitleParse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->_SubtitleParse(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

.field final synthetic val$bFromGallery:Z

.field final synthetic val$subtitleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iput-boolean p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->val$bFromGallery:Z

    iput-object p3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->val$subtitleName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getFilePath()V
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    .line 137
    :try_start_0
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Run parse thread"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Landroid/content/res/AssetFileDescriptor;)V
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Landroid/content/res/AssetFileDescriptor;)V

    .line 142
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 145
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->releaseSubtitle()V

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    sget-object v5, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$502(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 154
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[autoDetectCharset] mCharset UNICODE"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->callParseSubtitle()V
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    .line 220
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v4, v4

    if-lez v4, :cond_8

    .line 159
    const-string v3, ""

    .line 160
    .local v3, tmpSubtitlePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x1

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$702(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Z)Z

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 163
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "s[a]*mi(\\s*)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v5, v5, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$802(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSMISubtitle(Z)V

    .line 170
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 172
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 174
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v5, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangList:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 161
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 180
    :cond_4
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$702(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Z)Z

    .line 181
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->sortSubtitle()V
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    .line 183
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->val$bFromGallery:Z

    if-nez v4, :cond_7

    .line 186
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v6, v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->val$subtitleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$802(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->autoDetectCharset()V
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$1100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    .line 192
    :goto_3
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 194
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 195
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 198
    :cond_5
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v4, :cond_6

    .line 200
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->releaseSubtitle()V

    .line 203
    :cond_6
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->callParseSubtitle()V
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    .end local v1           #i:I
    .end local v3           #tmpSubtitlePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I
    invoke-static {v4, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$1202(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;I)I

    goto/16 :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #tmpSubtitlePath:Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setSubtitleFile(IZ)V

    goto :goto_3

    .line 207
    .end local v1           #i:I
    .end local v3           #tmpSubtitlePath:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NO_SUBTITLE_FILE"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v5, 0x0

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->access$1202(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
