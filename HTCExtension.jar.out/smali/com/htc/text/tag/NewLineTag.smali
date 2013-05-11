.class public Lcom/htc/text/tag/NewLineTag;
.super Lcom/htc/text/tag/BlankTag;
.source "NewLineTag.java"


# static fields
.field private static final CONTENT_DEC:Ljava/lang/String; = "\n"

.field private static final CONTENT_XML:Ljava/lang/String; = "<br />"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/text/tag/BlankTag;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/text/tag/BlankTag;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getDecContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "\n"

    return-object v0
.end method

.method protected getXmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "<br />"

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/htc/text/tag/BlankTag;->toEncodedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
