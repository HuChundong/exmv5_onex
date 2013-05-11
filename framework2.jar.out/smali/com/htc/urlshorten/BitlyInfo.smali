.class public Lcom/htc/urlshorten/BitlyInfo;
.super Ljava/lang/Object;
.source "BitlyInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mShortUrl:Ljava/lang/String;

.field private mStatusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyInfo;->mShortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyInfo;->mStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorCode:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorMessage:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "shortUrl"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/urlshorten/BitlyInfo;->mShortUrl:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/urlshorten/BitlyInfo;->mStatusCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nerrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/urlshorten/BitlyInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshortUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/urlshorten/BitlyInfo;->mShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/urlshorten/BitlyInfo;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
