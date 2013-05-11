.class public Lcom/htc/urlshorten/IsgdParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IsgdParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ISGD_URL:Ljava/lang/String; = "http://is.gd/api.php?longurl="

.field private static final TIMEOUT:I = 0xfa0

.field private static sHandler:Landroid/os/Handler;

.field private static sUrl:Ljava/lang/String;

.field private static sWhatError:I

.field private static sWhatSuccess:I

.field private static sWhatTimeout:I


# instance fields
.field private mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    new-instance v0, Lcom/htc/urlshorten/IsgdInfo;

    invoke-direct {v0}, Lcom/htc/urlshorten/IsgdInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/urlshorten/IsgdParser;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatSuccess:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatError:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatTimeout:I

    return v0
.end method


# virtual methods
.method public shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
    .locals 4
    .parameter "strUrl"
    .parameter "handler"
    .parameter "whatSuccess"
    .parameter "whatTimeout"
    .parameter "whatError"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    const-string v2, "KENLOG"

    const-string v3, "<IsgdParser.getShorterUrl> strUrl incorrect."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 38
    .local v0, msg:Landroid/os/Message;
    iput p5, v0, Landroid/os/Message;->what:I

    .line 39
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    sget-object v2, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 44
    :cond_1
    sput-object p1, Lcom/htc/urlshorten/IsgdParser;->sUrl:Ljava/lang/String;

    .line 45
    sput-object p2, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    .line 47
    sput p3, Lcom/htc/urlshorten/IsgdParser;->sWhatSuccess:I

    .line 48
    sput p4, Lcom/htc/urlshorten/IsgdParser;->sWhatTimeout:I

    .line 49
    sput p5, Lcom/htc/urlshorten/IsgdParser;->sWhatError:I

    .line 51
    new-instance v1, Lcom/htc/urlshorten/IsgdParser$1;

    invoke-direct {v1, p0}, Lcom/htc/urlshorten/IsgdParser$1;-><init>(Lcom/htc/urlshorten/IsgdParser;)V

    .line 89
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
