.class public Lcom/htc/text/tag/EmoticonTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "EmoticonTag.java"


# static fields
.field public static ALIGN_BASELINE:I = 0x0

.field public static ALIGN_BOTTOM:I = 0x0

.field private static final ATTR_ALIGNMENT:Ljava/lang/String; = "alg"

.field private static final ATTR_PKG_ALTERNATIVE:Ljava/lang/String; = "pkg_alt"

.field private static final ATTR_PKG_NORMAL:Ljava/lang/String; = "pkg"

.field private static final ATTR_RES_ALTERNATIVE:Ljava/lang/String; = "res_alt"

.field private static final ATTR_RES_ID:Ljava/lang/String; = "res_id"

.field private static final ATTR_RES_NORMAL:Ljava/lang/String; = "res"

.field private static final TYPE:Ljava/lang/String; = "emo"


# instance fields
.field private mAlignment:I

.field private mIsEmpty:Z

.field private mIsUsingSysRes:Z

.field private mPackage:Ljava/lang/String;

.field private mPackageAlt:Ljava/lang/String;

.field private mResId:I

.field private mResource:Ljava/lang/String;

.field private mResourceAlt:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BASELINE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .parameter "text"
    .parameter "alg"
    .parameter "resId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    .line 20
    iput-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    .line 26
    sget v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    iput v0, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    .line 27
    iput v1, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    .line 66
    invoke-static {p1}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 71
    :cond_0
    iput p2, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    .line 72
    iput p3, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    .line 74
    iget v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    if-gtz v0, :cond_1

    .line 75
    iput-boolean v2, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    .line 78
    :cond_1
    iput-boolean v2, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "alg"
    .parameter "pkg"
    .parameter "res"
    .parameter "pkgAlt"
    .parameter "resAlt"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    .line 20
    iput-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    .line 26
    sget v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    iput v0, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    .line 27
    iput v1, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    .line 42
    invoke-static {p1}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    .line 47
    :cond_0
    iput p2, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    .line 48
    invoke-static {p3}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    .line 49
    invoke-static {p4}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    .line 50
    invoke-static {p5}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    .line 51
    invoke-static {p6}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    .line 62
    :cond_4
    iput-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pkg"
    .parameter "res"

    .prologue
    .line 30
    const/4 v1, 0x0

    sget v2, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pkg"
    .parameter "res"
    .parameter "resAlt"

    .prologue
    .line 34
    const/4 v1, 0x0

    sget v2, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "res"
    .parameter "resAlt"
    .parameter "alg"

    .prologue
    .line 38
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "emo"

    return-object v0
.end method

.method public toDecoration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 160
    const-string v1, ""

    .line 181
    :goto_0
    return-object v1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    if-nez v1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    .end local v0           #content:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .restart local v0       #content:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getEndPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getTagType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 180
    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/htc/text/tag/EmoticonTag;->appendDecAttr(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    if-eqz v1, :cond_0

    .line 93
    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 94
    :cond_0
    iget-boolean v1, p0, Lcom/htc/text/tag/EmoticonTag;->mIsUsingSysRes:Z

    if-nez v1, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/htc/text/tag/EmoticonTag;->mPackage:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "res"

    iget-object v2, p0, Lcom/htc/text/tag/EmoticonTag;->mResource:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "pkg_alt"

    iget-object v2, p0, Lcom/htc/text/tag/EmoticonTag;->mPackageAlt:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "res_alt"

    iget-object v2, p0, Lcom/htc/text/tag/EmoticonTag;->mResourceAlt:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "alg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/text/tag/EmoticonTag;->mAlignment:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    .end local v0           #content:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .restart local v0       #content:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/text/tag/EmoticonTag;->getTagType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "res_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/text/tag/EmoticonTag;->mResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/text/tag/EmoticonTag;->appendXmlAttr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public toRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/text/tag/EmoticonTag;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, ""

    return-object v0
.end method
