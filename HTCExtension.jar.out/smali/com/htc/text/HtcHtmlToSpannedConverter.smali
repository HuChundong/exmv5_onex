.class public Lcom/htc/text/HtcHtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "HtcHtmlToSpannedConverter.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/HtcHtmlToSpannedConverter$Header;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Href;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Font;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Sub;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Super;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Blockquote;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Monospace;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Small;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Big;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Underline;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;,
        Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static COLORS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_SIZES:[F


# instance fields
.field private mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/text/HtcHtmlToSpannedConverter;->HEADER_SIZES:[F

    .line 529
    invoke-static {}, Lcom/htc/text/HtcHtmlToSpannedConverter;->buildColorMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/text/HtcHtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    return-void

    .line 51
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/text/HtcHtml$ImageGetter;Lcom/htc/text/HtcHtml$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 1
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"
    .parameter "parser"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSource:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 65
    iput-object p2, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    .line 66
    iput-object p3, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;

    .line 67
    iput-object p4, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    .line 68
    return-void
.end method

.method private static buildColorMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "maroon"

    const/high16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "red"

    const/high16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-object v0
.end method

.method private static end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .parameter "text"
    .parameter "kind"
    .parameter "repl"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 258
    .local v0, len:I
    invoke-static {p0, p1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 259
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 261
    .local v2, where:I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 263
    if-eq v2, v0, :cond_0

    .line 264
    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    :cond_0
    return-void
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .parameter "text"

    .prologue
    const/16 v7, 0x21

    .line 367
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 368
    .local v1, len:I
    const-class v4, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;

    invoke-static {p0, v4}, Lcom/htc/text/HtcHtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 370
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 372
    .local v3, where:I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 375
    :goto_0
    if-le v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 376
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 379
    :cond_0
    if-eq v3, v1, :cond_1

    move-object v0, v2

    .line 380
    check-cast v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;

    .line 382
    .local v0, h:Lcom/htc/text/HtcHtmlToSpannedConverter$Header;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lcom/htc/text/HtcHtmlToSpannedConverter;->HEADER_SIZES:[F

    #getter for: Lcom/htc/text/HtcHtmlToSpannedConverter$Header;->mLevel:I
    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;->access$000(Lcom/htc/text/HtcHtmlToSpannedConverter$Header;)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 384
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 387
    .end local v0           #h:Lcom/htc/text/HtcHtmlToSpannedConverter$Header;
    :cond_1
    return-void
.end method

.method private static getHtmlColor(Ljava/lang/String;)I
    .locals 5
    .parameter "color"

    .prologue
    const/4 v2, -0x1

    .line 561
    sget-object v3, Lcom/htc/text/HtcHtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 562
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 568
    :goto_0
    return v2

    .line 566
    :cond_0
    const/4 v3, -0x1

    :try_start_0
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "text"
    .parameter "kind"

    .prologue
    .line 242
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 247
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 234
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 235
    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 164
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleBr(Landroid/text/SpannableStringBuilder;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 170
    :cond_3
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_5
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 182
    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa0

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->endFont(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 192
    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 194
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Blockquote;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    :cond_d
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 198
    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->endA(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 200
    :cond_f
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 201
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 202
    :cond_10
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    :cond_11
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 206
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_13

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_13

    .line 209
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 210
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->endHeader(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 211
    :cond_13
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;

    iget-object v1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Lcom/htc/text/HtcHtml$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static handleP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .parameter "text"

    .prologue
    const/16 v2, 0xa

    .line 217
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 219
    .local v0, len:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 220
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 228
    :cond_2
    if-eqz v0, :cond_0

    .line 229
    const-string v1, "\n\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "tag"
    .parameter "attributes"

    .prologue
    const/4 v3, 0x1

    .line 111
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Bold;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Italic;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 132
    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Big;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Big;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 134
    :cond_a
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Small;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Small;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 136
    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0, p2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 138
    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 140
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Blockquote;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Blockquote;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 141
    :cond_d
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Monospace;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Monospace;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0, p2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 145
    :cond_f
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 146
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Underline;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Underline;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :cond_10
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Super;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Super;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :cond_11
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 150
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Sub;

    invoke-direct {v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Sub;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_13

    .line 154
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 155
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;-><init>(I)V

    invoke-static {v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    :cond_13
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 157
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    invoke-virtual {p0, v0, p2, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;)V

    goto/16 :goto_0

    .line 158
    :cond_14
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mTagHandler:Lcom/htc/text/HtcHtml$TagHandler;

    iget-object v1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/htc/text/HtcHtml$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .parameter "text"
    .parameter "mark"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 253
    .local v0, len:I
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 429
    add-int v5, v1, p2

    aget-char v0, p1, v5

    .line 431
    .local v0, c:C
    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_4

    .line 433
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 435
    .local v2, len:I
    if-nez v2, :cond_3

    .line 436
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 438
    if-nez v2, :cond_2

    .line 439
    const/16 v3, 0xa

    .line 447
    .local v3, pred:C
    :goto_1
    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    .line 448
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    .end local v2           #len:I
    .end local v3           #pred:C
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .restart local v2       #len:I
    :cond_2
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3       #pred:C
    goto :goto_1

    .line 444
    .end local v3           #pred:C
    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .restart local v3       #pred:C
    goto :goto_1

    .line 451
    .end local v2           #len:I
    .end local v3           #pred:C
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 455
    .end local v0           #c:C
    :cond_5
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 456
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 10

    .prologue
    const/16 v9, 0xa

    .line 73
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSource:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 88
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 89
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 92
    .local v1, end:I
    add-int/lit8 v5, v1, -0x2

    if-ltz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 99
    :cond_0
    if-ne v1, v4, :cond_1

    .line 100
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #obj:[Ljava/lang/Object;
    .end local v4           #start:I
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 102
    .end local v0           #e:Lorg/xml/sax/SAXException;
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v3       #obj:[Ljava/lang/Object;
    .restart local v4       #start:I
    :cond_1
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    const/16 v7, 0x33

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 107
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_2
    iget-object v5, p0, Lcom/htc/text/HtcHtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v5
.end method

.method protected endA(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 351
    .local v1, len:I
    const-class v4, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-static {p1, v4}, Lcom/htc/text/HtcHtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 354
    .local v3, where:I
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 356
    if-eq v3, v1, :cond_0

    move-object v0, v2

    .line 357
    check-cast v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    .line 359
    .local v0, h:Lcom/htc/text/HtcHtmlToSpannedConverter$Href;
    iget-object v4, v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 360
    new-instance v4, Landroid/text/style/URLSpan;

    iget-object v5, v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x21

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 364
    .end local v0           #h:Lcom/htc/text/HtcHtmlToSpannedConverter$Href;
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 398
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0, p2}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method protected endFont(Landroid/text/SpannableStringBuilder;)V
    .locals 14
    .parameter "text"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 307
    .local v9, len:I
    const-class v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;

    invoke-static {p1, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .line 308
    .local v11, obj:Ljava/lang/Object;
    invoke-virtual {p1, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 310
    .local v13, where:I
    invoke-virtual {p1, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 312
    if-eq v13, v9, :cond_1

    move-object v8, v11

    .line 313
    check-cast v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;

    .line 315
    .local v8, f:Lcom/htc/text/HtcHtmlToSpannedConverter$Font;
    iget-object v0, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 318
    .local v12, res:Landroid/content/res/Resources;
    iget-object v0, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, name:Ljava/lang/String;
    const-string v0, "color"

    const-string v1, "android"

    invoke-virtual {v12, v10, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 320
    .local v7, colorRes:I
    if-eqz v7, :cond_0

    .line 321
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 322
    .local v4, colors:Landroid/content/res/ColorStateList;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v13, v9, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 335
    .end local v4           #colors:Landroid/content/res/ColorStateList;
    .end local v7           #colorRes:I
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v0, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v1, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v13, v9, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 340
    .end local v8           #f:Lcom/htc/text/HtcHtmlToSpannedConverter$Font;
    :cond_1
    return-void

    .line 327
    .restart local v8       #f:Lcom/htc/text/HtcHtmlToSpannedConverter$Font;
    :cond_2
    iget-object v0, v8, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v6

    .line 328
    .local v6, c:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 329
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    or-int/2addr v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v13, v9, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 460
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 464
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 390
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 467
    return-void
.end method

.method protected startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 343
    const-string v2, ""

    const-string v3, "href"

    invoke-interface {p2, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 346
    .local v1, len:I
    new-instance v2, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 347
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 394
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p2, p4}, Lcom/htc/text/HtcHtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 412
    return-void
.end method

.method protected startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 298
    const-string v3, ""

    const-string v4, "color"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, color:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "face"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, face:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 302
    .local v2, len:I
    new-instance v3, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;

    invoke-direct {v3, v0, v1}, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    return-void
.end method

.method protected startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;)V
    .locals 7
    .parameter "text"
    .parameter "attributes"
    .parameter "img"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 272
    const-string v3, ""

    const-string v4, "src"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, src:Ljava/lang/String;
    const/4 v0, 0x0

    .line 275
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 276
    invoke-interface {p3, v2}, Lcom/htc/text/HtcHtml$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 286
    .local v1, len:I
    const-string v3, "\ufffc"

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    instance-of v3, v0, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v3, :cond_2

    .line 289
    new-instance v3, Lcom/htc/text/style/UrlDrawableSpan;

    invoke-direct {v3, v0, v2}, Lcom/htc/text/style/UrlDrawableSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_2
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method
