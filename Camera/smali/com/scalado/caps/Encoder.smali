.class public abstract Lcom/scalado/caps/Encoder;
.super Lcom/scalado/jni/JniPeer;
.source "Encoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
