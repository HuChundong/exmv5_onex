.class public Lcom/htc/opensense2/album/util/HelperUtil;
.super Ljava/lang/Object;
.source "HelperUtil.java"


# static fields
.field private static final CHAR_BLANK:Ljava/lang/CharSequence; = null

.field private static final CHAR_BREAK:Ljava/lang/CharSequence; = null

.field private static COLORSPAN_1:Landroid/text/style/ForegroundColorSpan; = null

.field private static COLORSPAN_2:Landroid/text/style/ForegroundColorSpan; = null

.field public static final FB_USER_ICON_CONFIG:Ljava/lang/String; = "com.facebook.theusericon"

.field public static final FB_USER_ID_CONFIG:Ljava/lang/String; = "com.facebook.theuserid"

.field public static final FB_USER_NAME_CONFIG:Ljava/lang/String; = "com.facebook.theusername"

.field private static LOG_TAG:Ljava/lang/String;

.field private static final STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

.field private static final STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

.field private static final builder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/htc/opensense2/album/util/HelperUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    .line 34
    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 35
    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 36
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    .line 37
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

    .line 38
    const-string v0, " "

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    .line 39
    const-string v0, "\n"

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "szName"
    .parameter "szComment"
    .parameter "szIsHyperLink"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, charContent:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    if-ne v3, p3, :cond_0

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_AllHyperLinkColor(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 91
    :cond_0
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_1

    .line 93
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x333334

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 96
    :cond_1
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 98
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 100
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    .local v2, textEnd:I
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x2030037

    invoke-direct {v4, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    if-eqz p3, :cond_2

    .line 112
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    :cond_2
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v3, v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 129
    .end local v2           #textEnd:I
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 131
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 132
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 133
    .restart local v2       #textEnd:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v2, v3

    .line 135
    .local v1, textBegin:I
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x2030039

    invoke-direct {v4, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4, v1, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    .end local v1           #textBegin:I
    .end local v2           #textEnd:I
    :cond_4
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public static getFormatedDateTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "szDateTime"

    .prologue
    const/4 v5, 0x0

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, charContent:Ljava/lang/CharSequence;
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 73
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_ITALIC:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public static getFormatedPhotoContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "szText1"
    .parameter "szText2"
    .parameter "szText3"
    .parameter "bitmap"
    .parameter "bIsHyperLink"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, charContent:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    if-ne v5, p5, :cond_0

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_0

    .line 193
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_AllHyperLinkColor(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 195
    :cond_0
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_1

    .line 197
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x333334

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 200
    :cond_1
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 202
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 204
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 206
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 209
    .local v4, textEnd:I
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x2030037

    invoke-direct {v6, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 215
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 221
    const/4 v5, 0x1

    if-ne v5, p5, :cond_2

    .line 223
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    :cond_2
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 234
    .end local v4           #textEnd:I
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 236
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 238
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 239
    .restart local v4       #textEnd:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 242
    .local v3, textBegin:I
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x2030039

    invoke-direct {v6, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 247
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 251
    .end local v3           #textBegin:I
    .end local v4           #textEnd:I
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 253
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 254
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 257
    .restart local v4       #textEnd:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 260
    .restart local v3       #textBegin:I
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x2030039

    invoke-direct {v6, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 276
    .end local v3           #textBegin:I
    .end local v4           #textEnd:I
    :cond_5
    if-eqz p4, :cond_6

    .line 278
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 279
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 280
    .local v2, indexBeginNext:I
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, imgSpan:Landroid/text/style/ImageSpan;
    const/4 v5, 0x0

    invoke-static {p0, p4, v5}, Lcom/htc/opensense2/album/util/HelperUtil;->getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 284
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 292
    .end local v1           #imgSpan:Landroid/text/style/ImageSpan;
    .end local v2           #indexBeginNext:I
    :cond_6
    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public static getFormatedTagDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "szName"
    .parameter "szComment"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 149
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, charContent:Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 155
    .local v1, styleSpenContent:Landroid/text/style/StyleSpan;
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 157
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 159
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 167
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 172
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 174
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 177
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 183
    :cond_3
    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    goto :goto_0
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;
    .locals 5
    .parameter "context"
    .parameter "bitmap"
    .parameter "VerticalAlignment"

    .prologue
    const/4 v4, 0x0

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 300
    .local v1, imgSpan:Landroid/text/style/ImageSpan;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 301
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 303
    new-instance v1, Landroid/text/style/ImageSpan;

    .end local v1           #imgSpan:Landroid/text/style/ImageSpan;
    invoke-direct {v1, v0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    .restart local v1       #imgSpan:Landroid/text/style/ImageSpan;
    return-object v1
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/text/style/ImageSpan;
    .locals 1
    .parameter "context"
    .parameter "drawable"
    .parameter "VerticalAlignment"

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, imgSpan:Landroid/text/style/ImageSpan;
    new-instance v0, Landroid/text/style/ImageSpan;

    .end local v0           #imgSpan:Landroid/text/style/ImageSpan;
    invoke-direct {v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 312
    .restart local v0       #imgSpan:Landroid/text/style/ImageSpan;
    return-object v0
.end method

.method public static getResourceBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "nResourceID"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public static gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "szID"
    .parameter "szName"
    .parameter "szPhoto"

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.socialnetwork.facebook"

    const-string v3, "com.htc.socialnetwork.facebook.FacebookProfileTab"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 323
    const-string v1, "com.facebook.theuserid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "com.facebook.theusername"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "com.facebook.theusericon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public static removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "szSource"

    .prologue
    const/16 v2, 0x20

    .line 52
    move-object v0, p0

    .line 54
    .local v0, szText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 57
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 58
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    return-object v0
.end method
