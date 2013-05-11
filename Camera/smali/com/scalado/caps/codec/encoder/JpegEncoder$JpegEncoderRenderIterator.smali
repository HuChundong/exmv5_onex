.class public Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;
.super Lcom/scalado/base/Iterator;
.source "JpegEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/encoder/JpegEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JpegEncoderRenderIterator"
.end annotation


# static fields
.field private static final CAPS_OUTPUT_STRETCH:I = 0x1


# instance fields
.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private decoder:Lcom/scalado/caps/Decoder;

.field private dimensions:Lcom/scalado/base/Size;

.field private dstStream:Lcom/scalado/stream/Stream;


# direct methods
.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->dstStream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->dimensions:Lcom/scalado/base/Size;

    iput-object p3, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->decoder:Lcom/scalado/caps/Decoder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->nativeCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;I)V

    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;I)V
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    return-void
.end method

.method public done()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    return v0
.end method

.method public step()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v0

    return v0
.end method
