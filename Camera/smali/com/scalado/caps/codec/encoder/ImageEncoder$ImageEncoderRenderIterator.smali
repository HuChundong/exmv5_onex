.class Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;
.super Lcom/scalado/base/Iterator;
.source "ImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/encoder/ImageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEncoderRenderIterator"
.end annotation


# instance fields
.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private decoder:Lcom/scalado/caps/Decoder;

.field private image:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/scalado/caps/codec/encoder/ImageEncoder;


# direct methods
.method constructor <init>(Lcom/scalado/caps/codec/encoder/ImageEncoder;Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->this$0:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->image:Lcom/scalado/base/Image;

    iput-object p3, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->decoder:Lcom/scalado/caps/Decoder;

    #calls: Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->getOption()I
    invoke-static {p4}, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->access$000(Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->nativeCreate(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;I)V

    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    return-void
.end method

.method public done()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    return v0
.end method

.method native nativeCreate(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;I)V
.end method

.method public step()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v0

    return v0
.end method
