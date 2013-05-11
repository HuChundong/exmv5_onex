.class public Lcom/htc/text/tag/IndicatorTag;
.super Lcom/htc/text/tag/EmoticonTag;
.source "IndicatorTag.java"


# static fields
.field public static ALIGN_BASELINE:I = 0x0

.field public static ALIGN_BOTTOM:I = 0x0

.field private static final TYPE:Ljava/lang/String; = "ind"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/htc/text/tag/IndicatorTag;->ALIGN_BOTTOM:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/htc/text/tag/IndicatorTag;->ALIGN_BASELINE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "alg"
    .parameter "pkg"
    .parameter "res"
    .parameter "pkgAlt"
    .parameter "resAlt"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pkg"
    .parameter "res"

    .prologue
    .line 11
    const/4 v1, 0x0

    sget v2, Lcom/htc/text/tag/IndicatorTag;->ALIGN_BASELINE:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/tag/IndicatorTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "ind"

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/htc/text/tag/EmoticonTag;->toEncodedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
