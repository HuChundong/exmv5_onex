.class public Lcom/htc/wrap/com/android/internal/util/HtcWrapXmlUtilsEx;
.super Ljava/lang/Object;
.source "HtcWrapXmlUtilsEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 25
    return-void
.end method
