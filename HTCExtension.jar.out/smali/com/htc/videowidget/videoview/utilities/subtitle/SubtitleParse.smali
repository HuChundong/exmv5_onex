.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
.super Ljava/lang/Object;
.source "SubtitleParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;
    }
.end annotation


# static fields
.field private static final NO_SHOW_SUBTITLE:I = -0x1

.field private static final NO_SUBTITLE_FILE:I = 0x0

.field private static final PARSE_DONE:I = 0x3

.field private static final PARSE_ERROR:I = 0x2

.field private static final PARSE_START:I = 0x1

.field private static final SEARCHING_SUBTITLE:I = -0x1

.field private static final SMI_FILE:Ljava/lang/String; = "smi"

.field private static final SRT_FILE:Ljava/lang/String; = "srt"

.field private static final TAG:Ljava/lang/String;

.field private static mLangClass:I


# instance fields
.field aSubtitlePath:[Ljava/io/File;

.field private isDebug:Z

.field private mAfd:Landroid/content/res/AssetFileDescriptor;

.field mAllSubtitle:Ljava/lang/String;

.field private mBSearchLang:Z

.field mByteArray:[B

.field private mCharacterSetHelper:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

.field private mCharset:Ljava/nio/charset/Charset;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field mFilePath:Ljava/lang/String;

.field mLangList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParseStatus:I

.field private mParseThread:Ljava/lang/Thread;

.field private mPlayedSubtitleIndex:I

.field mSmiList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSrtList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;",
            ">;"
        }
    .end annotation
.end field

.field mSubtitleNameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitlePath:Ljava/lang/String;

.field private mSubtitleType:Ljava/lang/String;

.field private mVideoPath:Ljava/lang/String;

.field smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangClass:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .parameter "context"
    .parameter "srtfd"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 51
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isDebug:Z

    .line 55
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 89
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubtitleParse srtfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    .line 96
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->setEncoding(Ljava/lang/String;Landroid/content/Context;)V

    .line 98
    const-string v0, ""

    invoke-direct {p0, v0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->_SubtitleParse(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "subtitleName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 51
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isDebug:Z

    .line 55
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 72
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubtitleParse subtitleName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitle path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, tmpType:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "srt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "srt"

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sami"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :cond_2
    const-string v1, "smi"

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "filePath"
    .parameter "subtitleName"
    .parameter "bFromGallery"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 51
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isDebug:Z

    .line 55
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 103
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubtitleParse filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    if-ne p3, v0, :cond_1

    .line 106
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "NO_SUBTITLE_FILE"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File path >>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    .line 114
    if-nez p4, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setCharset()V

    .line 119
    invoke-direct {p0, p3, p4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->_SubtitleParse(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private _SubtitleParse(Ljava/lang/String;Z)V
    .locals 3
    .parameter "subtitleName"
    .parameter "bFromGallery"

    .prologue
    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangList:Ljava/util/LinkedList;

    .line 128
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    const-string v2, "Parse Thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 239
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "Parse thread is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "Start parse thread fail"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getFilePath()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->sortSubtitle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->autoDetectCharset()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->callParseSubtitle()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Ljava/lang/String;)V

    return-void
.end method

.method private autoDetectCharset()V
    .locals 5

    .prologue
    .line 1199
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] start"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

    invoke-direct {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;-><init>()V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharacterSetHelper:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

    .line 1201
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharacterSetHelper:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->checkEncodeFormat(Ljava/lang/String;)I

    move-result v1

    .line 1202
    .local v1, nEncodeFormat:I
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nEncodeFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSubtitlePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, locale:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1226
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "ja_jp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Multiple match kEncodingShiftJIS and local JAPAN"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v2, "shift_jis"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    .line 1252
    :goto_0
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[autoDetectCharset] Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1207
    :sswitch_0
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Autodetect fail: Go SPEC define behavior"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setCharset()V

    goto :goto_0

    .line 1211
    :sswitch_1
    const-string v2, "shift_jis"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1214
    :sswitch_2
    const-string v2, "gb2312"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1217
    :sswitch_3
    const-string v2, "big5"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1220
    :sswitch_4
    const-string v2, "euc-kr"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1223
    :sswitch_5
    sget-object v2, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1231
    :cond_0
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "zh_cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Multiple match kEncodingGBK and local CHINA"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v2, "gb2312"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1236
    :cond_1
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v2, "zh_tw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1238
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Multiple match kEncodingBig5 and local TAIWAN"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v2, "big5"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 1241
    :cond_2
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string v2, "ko_kr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1243
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Multiple match kEncodingEUCKR and local KOREA"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v2, "euc-kr"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 1248
    :cond_3
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[autoDetectCharset] Multiple match fail: Go SPEC define behavior"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setCharset()V

    goto/16 :goto_0

    .line 1204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
    .end sparse-switch
.end method

.method private callParseSubtitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    :try_start_0
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[callparseSubtitle]: start"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->sendBroadcast()V

    .line 300
    const-string v2, "srt"

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    .line 301
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSRTSubtitle(Z)V

    .line 328
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[callparseSubtitle]: end"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_1
    return-void

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 305
    :cond_2
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "NO_SUBTITLE_FILE"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 307
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 308
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->sendBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[callparseSubtitle]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    goto :goto_1

    .line 312
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->sendBroadcast()V

    .line 314
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, extName:Ljava/lang/String;
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtitle file ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extend format is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, ".srt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    const-string v2, "srt"

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    .line 320
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSRTSubtitle(Z)V

    goto/16 :goto_0

    .line 322
    :cond_4
    const-string v2, ".sami"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".smi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :cond_5
    const-string v2, "smi"

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    .line 325
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSMISubtitle(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private checkingSMILang()V
    .locals 6

    .prologue
    .line 961
    const-string v1, ""

    .line 963
    .local v1, langName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 964
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkingSMILang] lang = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    sput v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangClass:I

    .line 970
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkingSMILang] set lang = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_0
    return-void

    .line 965
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private exchange(II)V
    .locals 3
    .parameter "i"
    .parameter "j"

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1096
    .local v0, temp:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1098
    return-void
.end method

.method private getFilePath()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 341
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_2

    .line 351
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mVideoPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    .line 353
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFilePath] file path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, f:Ljava/io/File;
    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$VideoFileFilter;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$1;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFilePath] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iput v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v3, "[getFilePath] Video path is null"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iput v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 369
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 370
    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getSubtitleFile(Landroid/content/res/AssetFileDescriptor;)V
    .locals 9
    .parameter "afd"

    .prologue
    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 403
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 405
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 406
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    .line 407
    .local v4, length:J
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getSubtitleFile] length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Ljava/io/InputStream;J)V

    .line 409
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v4           #length:J
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSubtitleFile(Ljava/io/InputStream;J)V
    .locals 6
    .parameter "in"
    .parameter "length"

    .prologue
    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, offset:I
    const/4 v1, 0x0

    .line 420
    .local v1, numRead:I
    long-to-int v3, p2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    .line 424
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    const/high16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 426
    add-int/2addr v2, v1

    goto :goto_0

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_1

    .line 433
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not completely read file "

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubtitleFile]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 451
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    array-length v3, v3

    if-nez v3, :cond_3

    .line 457
    :cond_2
    :goto_1
    return-void

    .line 444
    :catch_1
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubtitleFile]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    const-string v4, "\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 456
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1
.end method

.method private getSubtitleFile(Ljava/lang/String;)V
    .locals 8
    .parameter "subtitlePath"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    const-string v6, ""

    if-ne p1, v6, :cond_1

    .line 378
    :cond_0
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v7, "[parseSRTSubtitle] Empty or null file path"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 395
    :goto_0
    return-void

    .line 382
    :cond_1
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v7, "[getSubtitleFile]"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 385
    .local v2, in:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 388
    .local v4, length:J
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleFile(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 394
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getSubtitleType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "Not support subtitle type or no subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v0, ""

    .line 986
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleType:Ljava/lang/String;

    goto :goto_0
.end method

.method private isSMI()Z
    .locals 2

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const/4 v0, 0x1

    .line 995
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSRT()Z
    .locals 2

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "srt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    const/4 v0, 0x1

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private quicksort(II)V
    .locals 5
    .parameter "low"
    .parameter "high"

    .prologue
    .line 1059
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    move v0, p1

    .local v0, i:I
    move v1, p2

    .line 1064
    .local v1, j:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    sub-int v4, p2, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1067
    .local v2, pivot:Ljava/lang/String;
    :cond_2
    :goto_1
    if-gt v0, v1, :cond_5

    .line 1069
    :goto_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1074
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    .line 1076
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1079
    :cond_4
    if-gt v0, v1, :cond_2

    .line 1081
    invoke-direct {p0, v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->exchange(II)V

    .line 1082
    add-int/lit8 v0, v0, 0x1

    .line 1083
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1087
    :cond_5
    if-ge p1, v1, :cond_6

    .line 1088
    invoke-direct {p0, p1, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->quicksort(II)V

    .line 1089
    :cond_6
    if-ge v0, p2, :cond_0

    .line 1090
    invoke-direct {p0, v0, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->quicksort(II)V

    goto :goto_0
.end method

.method private readSubtitleLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, newLineOffset:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 474
    if-ne v0, v5, :cond_2

    .line 476
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 477
    if-ne v0, v5, :cond_1

    .line 479
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, tmpSubtitle:Ljava/lang/String;
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 494
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 495
    const/4 v1, 0x0

    .line 497
    .end local v1           #tmpSubtitle:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 484
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 485
    .restart local v1       #tmpSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    goto :goto_0

    .line 490
    .end local v1           #tmpSubtitle:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 491
    .restart local v1       #tmpSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 5

    .prologue
    .line 1142
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v4, "[send broadcast intent]: start"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.subtitle_name_list"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, broadcastIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1147
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1148
    .local v2, subtitleNameList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1149
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    .end local v1           #i:I
    .end local v2           #subtitleNameList:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 1156
    .restart local v2       #subtitleNameList:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 1157
    const-string v3, "subtitle_mode"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1161
    :goto_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1162
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v4, "[send broadcast intent]: end"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    return-void

    .line 1159
    :cond_2
    const-string v3, "subtitle_mode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private setCharset()V
    .locals 5

    .prologue
    .line 1102
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->getEncoding(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, sCharset:Ljava/lang/String;
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCharset] Get preference charset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    if-ne v1, v2, :cond_5

    .line 1108
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, locale:Ljava/lang/String;
    const-string v2, "zh_tw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1112
    const-string v2, "big5"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    .line 1130
    :goto_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->setEncoding(Ljava/lang/String;Landroid/content/Context;)V

    .line 1131
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCharset] Auto detect fail and use SPEC define as default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    .end local v0           #locale:Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCharset]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    return-void

    .line 1114
    .restart local v0       #locale:Ljava/lang/String;
    :cond_1
    const-string v2, "zh_cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    const-string v2, "gb2312"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1118
    :cond_2
    const-string v2, "ko_kr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1120
    const-string v2, "euc-kr"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1122
    :cond_3
    const-string v2, "ja_jp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1124
    const-string v2, "euc-jp"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1128
    :cond_4
    sget-object v2, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1134
    .end local v0           #locale:Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private sortSubtitle()V
    .locals 8

    .prologue
    .line 1008
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1010
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSrtList:Ljava/util/LinkedList;

    .line 1011
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    .line 1012
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    .line 1013
    const-string v3, ""

    .line 1015
    .local v3, tmpSrtName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1017
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1019
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

    if-eqz v4, :cond_2

    .line 1021
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v4, :cond_1

    .line 1023
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1025
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1029
    sget-object v5, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smi list = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1031
    :cond_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getLangClasses()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1033
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1015
    .end local v0           #i:I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1038
    :cond_2
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

    const-string v5, "srt(\\s*)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1040
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSrtList:Ljava/util/LinkedList;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-object v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srt list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1045
    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->quicksort(II)V

    .line 1047
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1048
    sget-object v5, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1050
    .end local v1           #j:I
    .end local v2           #k:I
    .end local v3           #tmpSrtName:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method protected changeSubtitle(IZ)V
    .locals 3
    .parameter "subtitleIndex"
    .parameter "isNeedAutoDetect"

    .prologue
    const/4 v2, -0x1

    .line 243
    if-ne p1, v2, :cond_0

    .line 245
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 246
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 288
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setSubtitleFile(IZ)V

    .line 252
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->clearSubtitle()V

    .line 253
    if-nez p2, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setCharset()V

    .line 258
    :cond_1
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 260
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$2;

    invoke-direct {v2, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse$2;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    const-string v2, "Parse Thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "Start parse thread fail"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/IllegalThreadStateException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "Parse thread is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public clearSubtitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 809
    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 810
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] clear SubtitleList"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->releaseSubtitle()V

    .line 816
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] clear smi SubtitleList"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    if-eqz v1, :cond_2

    .line 821
    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    .line 822
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] clear byte array"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 829
    :try_start_0
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] Before thread join!"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 831
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] After thread join!"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseThread:Ljava/lang/Thread;

    .line 839
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] Parse Thread is finished!"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_3
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 836
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse][releaseSubtitle] join thread exception!"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getEndPos(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 768
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSRT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getEndTimePos()I

    move-result v0

    .line 781
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSMI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getEndPos(I)I

    move-result v0

    goto :goto_0

    .line 774
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getEndPos] Not support type"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getEndPos] End of subtitle"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getParseStatus()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    return v0
.end method

.method protected getPlayedSubtitleIndex()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    return v0
.end method

.method protected getStrPos(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 747
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSRT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getStartTimePos()I

    move-result v0

    .line 760
    :goto_0
    return v0

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSMI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getStrPos(I)I

    move-result v0

    goto :goto_0

    .line 753
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getStrPos] Not support type"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getStrPos] End of subtitle"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSubtitle(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 705
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSRT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getsubtitleText()Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSMI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getSubtitleText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 711
    :cond_1
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "[getSubtitle] Not support type"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, ""

    goto :goto_0

    .line 717
    :cond_2
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v1, "[getSubtitle] End of subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, ""

    goto :goto_0
.end method

.method protected getSubtitleByteArray()[B
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mByteArray:[B

    return-object v0
.end method

.method protected getSubtitleCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSubtitleList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected getSubtitlePath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 724
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 726
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSRT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 739
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSMI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    goto :goto_0

    .line 732
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getSubtitlePath] Not support type"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getSubtitlePath] No subtitle path"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getSubtitleSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 787
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSRT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 800
    :cond_0
    :goto_0
    return v0

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isSMI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 792
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getSubtitleSize()I

    move-result v0

    goto :goto_0

    .line 795
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[getEndPos] Not support type"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseSMISubtitle(Z)V
    .locals 5
    .parameter "bFromEncodingPage"

    .prologue
    const/4 v4, -0x1

    .line 642
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_2

    .line 644
    :cond_0
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parseSMISubtitle] Empty or null file path"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    if-eqz v1, :cond_1

    .line 646
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 684
    :goto_0
    return-void

    .line 648
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    goto :goto_0

    .line 652
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[parse smi start]"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :try_start_0
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    .line 658
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 659
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    sget v2, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangClass:I

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->setLangClass(I)V

    .line 660
    if-nez p1, :cond_3

    .line 662
    sget v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mLangClass:I

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->setLang(ILandroid/content/Context;)V

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    invoke-virtual {v1, v2, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->startElement(ZZ)V

    .line 667
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    if-eqz v1, :cond_4

    .line 668
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 671
    :goto_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->smiParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SMISubtitleParse;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parse smi] status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_4
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 673
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseSMISubtitle] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mBSearchLang:Z

    if-eqz v1, :cond_5

    .line 677
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 680
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 679
    :cond_5
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    goto :goto_3
.end method

.method public parseSRTSubtitle(Z)V
    .locals 24
    .parameter "bFromEncodingPage"

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAfd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-gtz v21, :cond_2

    .line 505
    :cond_0
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v22, "[parseSRTSubtitle] Empty or null file path"

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v22, "[parse start]"

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    .line 516
    .local v4, allSubtitleSize:I
    const/16 v21, 0x1

    :try_start_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    .line 518
    const/16 v3, 0x32

    .line 519
    .local v3, SUBTITLE_LINE_SIZE:I
    const-string v6, ""

    .line 520
    .local v6, currentLineText:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v21, 0x32

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    .local v19, tmpLineText:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 522
    .local v11, hasText:Z
    new-instance v17, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;-><init>()V

    .line 523
    .local v17, subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    const-string v21, "(\\d+):(\\d+):(\\d+),(\\d+)(\\s*)-+>(\\s*)(\\d+):(\\d+):(\\d+),(\\d+)"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 524
    .local v15, p:Ljava/util/regex/Pattern;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v21, "H:m:s,S"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 529
    .local v7, dateTime:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 530
    .local v5, calendar:Ljava/util/Calendar;
    const/4 v12, 0x0

    .line 531
    .local v12, hasTimeStamp:Z
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 532
    .local v20, zoneOffset:I
    const/4 v10, 0x0

    .line 536
    .local v10, error:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->readSubtitleLine()Ljava/lang/String;

    .line 538
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->readSubtitleLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 540
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v0, v4, :cond_5

    .line 629
    :cond_4
    :goto_2
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v3           #SUBTITLE_LINE_SIZE:I
    .end local v5           #calendar:Ljava/util/Calendar;
    .end local v6           #currentLineText:Ljava/lang/String;
    .end local v7           #dateTime:Ljava/text/SimpleDateFormat;
    .end local v10           #error:I
    .end local v11           #hasText:Z
    .end local v12           #hasTimeStamp:Z
    .end local v15           #p:Ljava/util/regex/Pattern;
    .end local v17           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .end local v19           #tmpLineText:Ljava/lang/StringBuilder;
    .end local v20           #zoneOffset:I
    :goto_3
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[parseSRTSubtitle] status = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    .restart local v3       #SUBTITLE_LINE_SIZE:I
    .restart local v5       #calendar:Ljava/util/Calendar;
    .restart local v6       #currentLineText:Ljava/lang/String;
    .restart local v7       #dateTime:Ljava/text/SimpleDateFormat;
    .restart local v10       #error:I
    .restart local v11       #hasText:Z
    .restart local v12       #hasTimeStamp:Z
    .restart local v15       #p:Ljava/util/regex/Pattern;
    .restart local v17       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .restart local v19       #tmpLineText:Ljava/lang/StringBuilder;
    .restart local v20       #zoneOffset:I
    :cond_5
    if-eqz p1, :cond_7

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 545
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->styleFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 547
    .local v18, tmpLine:Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 548
    invoke-virtual/range {v17 .. v18}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setSubtitleText(Ljava/lang/String;)V

    .line 550
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v22, "[parseSRTSubtitle] first subtitle longer than 50"

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 631
    .end local v3           #SUBTITLE_LINE_SIZE:I
    .end local v5           #calendar:Ljava/util/Calendar;
    .end local v6           #currentLineText:Ljava/lang/String;
    .end local v7           #dateTime:Ljava/text/SimpleDateFormat;
    .end local v10           #error:I
    .end local v11           #hasText:Z
    .end local v12           #hasTimeStamp:Z
    .end local v15           #p:Ljava/util/regex/Pattern;
    .end local v17           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .end local v18           #tmpLine:Ljava/lang/String;
    .end local v19           #tmpLineText:Ljava/lang/StringBuilder;
    .end local v20           #zoneOffset:I
    :catch_0
    move-exception v8

    .line 633
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[parseSRTSubtitle] error = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mParseStatus:I

    goto :goto_3

    .line 555
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v3       #SUBTITLE_LINE_SIZE:I
    .restart local v5       #calendar:Ljava/util/Calendar;
    .restart local v6       #currentLineText:Ljava/lang/String;
    .restart local v7       #dateTime:Ljava/text/SimpleDateFormat;
    .restart local v10       #error:I
    .restart local v11       #hasText:Z
    .restart local v12       #hasTimeStamp:Z
    .restart local v15       #p:Ljava/util/regex/Pattern;
    .restart local v17       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    .restart local v19       #tmpLineText:Ljava/lang/StringBuilder;
    .restart local v20       #zoneOffset:I
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 558
    if-nez v12, :cond_8

    invoke-virtual {v15, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 560
    const/4 v12, 0x1

    .line 562
    if-nez p1, :cond_3

    .line 564
    new-instance v17, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;

    .end local v17           #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    invoke-direct/range {v17 .. v17}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;-><init>()V

    .line 567
    .restart local v17       #subtitleData:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
    const/16 v21, 0x0

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 568
    .local v16, strTime:Ljava/lang/String;
    const-string v21, ">"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, endTime:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 570
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v14, v21, v20

    .line 571
    .local v14, iStrTime:I
    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 572
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v13, v21, v20

    .line 574
    .local v13, iEndTime:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setStartTimePos(I)V

    .line 575
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setEndTimePos(I)V

    goto/16 :goto_1

    .line 581
    .end local v9           #endTime:Ljava/lang/String;
    .end local v13           #iEndTime:I
    .end local v14           #iStrTime:I
    .end local v16           #strTime:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "\\s+"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 583
    :cond_9
    if-eqz v11, :cond_e

    .line 585
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->styleFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 587
    .restart local v18       #tmpLine:Ljava/lang/String;
    if-eqz v18, :cond_a

    const-string v21, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 588
    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 589
    :cond_a
    if-eqz v17, :cond_b

    .line 590
    invoke-virtual/range {v17 .. v18}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->setSubtitleText(Ljava/lang/String;)V

    .line 592
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->isDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 594
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Start time position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getStartTimePos()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "End time position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getEndTimePos()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "subtitle = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->getsubtitleText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v22, "[new line] "

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleList:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->readSubtitleLine()Ljava/lang/String;

    .line 603
    if-nez p1, :cond_1

    .line 615
    .end local v18           #tmpLine:Ljava/lang/String;
    :cond_d
    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 616
    const/4 v11, 0x0

    .line 617
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 608
    :cond_e
    sget-object v21, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v22, "[parseSRTSubtitle] format error, maybe has \\n before text"

    invoke-static/range {v21 .. v22}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    add-int/lit8 v10, v10, 0x1

    .line 610
    if-eqz p1, :cond_d

    const/16 v21, 0x3

    move/from16 v0, v21

    if-lt v10, v0, :cond_d

    .line 612
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "error three times"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 622
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 623
    const/4 v11, 0x1

    goto/16 :goto_1
.end method

.method protected releaseSubtitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 845
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    if-eqz v0, :cond_0

    .line 847
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->clearSubtitle()V

    .line 852
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharacterSetHelper:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

    if-eqz v0, :cond_1

    .line 854
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mCharacterSetHelper:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;

    .line 856
    :cond_1
    return-void
.end method

.method protected releaseSubtitleList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSrtList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSrtList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 863
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSrtList:Ljava/util/LinkedList;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 868
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSmiList:Ljava/util/LinkedList;

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 873
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    .line 875
    :cond_2
    return-void
.end method

.method protected setSubtitleFile(IZ)V
    .locals 4
    .parameter "index"
    .parameter "isNeedAutoDetect"

    .prologue
    .line 918
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 920
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mPlayedSubtitleIndex:I

    .line 921
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[.]+s[a]*mi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 927
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->checkingSMILang()V

    .line 928
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[.]+s[a]*mi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 930
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 941
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 943
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->autoDetectCharset()V

    .line 945
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setSubtitleFile] set subtitle file path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v0           #i:I
    :goto_2
    return-void

    .line 935
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitleNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->aSubtitlePath:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    goto :goto_1

    .line 921
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 949
    .end local v0           #i:I
    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mSubtitlePath:Ljava/lang/String;

    .line 950
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->TAG:Ljava/lang/String;

    const-string v2, "[setSubtitleFile] no subtitle file"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setSubtitleFile(Ljava/lang/String;)V
    .locals 1
    .parameter "allSubtitle"

    .prologue
    .line 461
    if-eqz p1, :cond_0

    .line 463
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->mAllSubtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 466
    :cond_0
    return-void
.end method

.method protected styleFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "styleString"

    .prologue
    .line 1168
    move-object v0, p1

    .line 1170
    .local v0, tmpLineText:Ljava/lang/String;
    const-string v1, "&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1171
    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    :cond_0
    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1173
    const-string v1, "<br>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    :cond_1
    const-string v1, "<i>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1175
    const-string v1, "<i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    :cond_2
    const-string v1, "</i>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1177
    const-string v1, "</i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    :cond_3
    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 1179
    const-string v1, "<b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :cond_4
    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 1181
    const-string v1, "</b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    :cond_5
    return-object v0
.end method
