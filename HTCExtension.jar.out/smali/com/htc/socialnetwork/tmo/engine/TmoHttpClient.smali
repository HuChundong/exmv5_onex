.class public Lcom/htc/socialnetwork/tmo/engine/TmoHttpClient;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "TmoHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/TmoHttpClient;->InitHttpClient()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/TmoHttpClient;->InitAuth2(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method
