.class public Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;
.super Ljava/lang/Object;
.source "HtcWrapFastXmlSerializerEx.java"


# instance fields
.field private mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    .line 25
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->comment(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 44
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 58
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->getDepth()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "generatePrefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 108
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/util/HtcWrapFastXmlSerializerEx;->mXmlSerializer:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->text([CII)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
