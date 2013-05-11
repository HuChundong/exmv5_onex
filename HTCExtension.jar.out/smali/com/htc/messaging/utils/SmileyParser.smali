.class public Lcom/htc/messaging/utils/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# static fields
.field public static final HTC_SMILEY_RES_IDS:[I = null

.field public static final IME_SMILEY_RES_IDS:[I = null

.field public static final SMILEY_TEXT_LENGTH:I = 0x2

.field public static final usingIDS:[I


# instance fields
.field private HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

.field private IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mIMEsmileyTexts:[Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mPatternNoIME:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    .line 203
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    .line 266
    sget-object v0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->usingIDS:[I

    .line 267
    return-void

    .line 165
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7t
        0xft 0x0t 0x2t 0x7t
        0xbt 0x0t 0x2t 0x7t
        0x2t 0x0t 0x2t 0x7t
        0x11t 0x0t 0x2t 0x7t
        0x11t 0x0t 0x2t 0x7t
        0xdt 0x0t 0x2t 0x7t
        0xat 0x0t 0x2t 0x7t
        0x6t 0x0t 0x2t 0x7t
    .end array-data

    .line 203
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7t
        0xbt 0x0t 0x2t 0x7t
        0xft 0x0t 0x2t 0x7t
        0xdt 0x0t 0x2t 0x7t
        0xct 0x0t 0x2t 0x7t
        0x6t 0x0t 0x2t 0x7t
        0x11t 0x0t 0x2t 0x7t
        0x1t 0x0t 0x2t 0x7t
        0xat 0x0t 0x2t 0x7t
        0x4t 0x0t 0x2t 0x7t
        0x3t 0x0t 0x2t 0x7t
        0x0t 0x0t 0x2t 0x7t
        0xet 0x0t 0x2t 0x7t
        0x2t 0x0t 0x2t 0x7t
        0x8t 0x0t 0x2t 0x7t
        0x7t 0x0t 0x2t 0x7t
        0x10t 0x0t 0x2t 0x7t
        0x9t 0x0t 0x2t 0x7t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ":-)"

    aput-object v2, v1, v7

    const-string v2, ":-("

    aput-object v2, v1, v4

    const-string v2, ";-)"

    aput-object v2, v1, v5

    const-string v2, ":-P"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "=-O"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ":-*"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ":O"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "B-)"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ":-$"

    aput-object v3, v1, v2

    const-string v2, ":-!"

    aput-object v2, v1, v6

    const/16 v2, 0xa

    const-string v3, ":-["

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "O:-)"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, ":-\\"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, ":\'("

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, ":-X"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, ":-D"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "o_O"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "<3"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 68
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ":)"

    aput-object v2, v1, v7

    const-string v2, ";)"

    aput-object v2, v1, v4

    const-string v2, ":("

    aput-object v2, v1, v5

    const-string v2, ":\'("

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, ":o"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ":O"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ":P"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ":$"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ":*"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    .line 95
    const-string v1, "SmileyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct, Context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    .line 98
    :try_start_0
    const-string v1, "com.htc.socialnetwork.res"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const-string v1, "SmileyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct, mContext(sn.res)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-array v1, v6, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    .line 107
    const/16 v1, 0x12

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    .line 109
    invoke-direct {p0}, Lcom/htc/messaging/utils/SmileyParser;->prepareBitmapToArray()V

    .line 111
    invoke-direct {p0}, Lcom/htc/messaging/utils/SmileyParser;->buildSmileyToBitmap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToBitmap:Ljava/util/HashMap;

    .line 112
    invoke-direct {p0, v4}, Lcom/htc/messaging/utils/SmileyParser;->buildPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    .line 115
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 102
    iput-object p1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private buildPattern(Z)Ljava/util/regex/Pattern;
    .locals 8
    .parameter "withIME"

    .prologue
    const/16 v7, 0x7c

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    iget-object v6, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v6, v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 313
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 319
    .restart local v4       #s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToBitmap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->usingIDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    array-length v2, v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 278
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 284
    .local v1, smileyToBitmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    :cond_3
    return-object v1
.end method

.method private prepareBitmapToArray()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "SmileyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    :cond_0
    const-string v1, "SmileyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IME_SMILEY_RES_BMP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", HTC_SMILEY_RES_BMP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v2, v2, v5

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 126
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v2, v2, v6

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 127
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v2, v2, v7

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 128
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v2, v2, v8

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v8

    .line 129
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v2, v2, v9

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 130
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 131
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x6

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x7

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0x8

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    aget v2, v2, v5

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 138
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    aget v2, v2, v6

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 139
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    aget v2, v2, v7

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 140
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    aget v2, v2, v8

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v8

    .line 141
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    aget v2, v2, v9

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 142
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 143
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x6

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/4 v2, 0x7

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0x8

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 146
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0x9

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 147
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xa

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xb

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 149
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xc

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 150
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xd

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 151
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xe

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 152
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0xf

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 153
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0x10

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    iget-object v1, p0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_BMP:[Landroid/graphics/Bitmap;

    const/16 v2, 0x11

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/messaging/utils/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public addSmileySpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"
    .parameter "withIMEpattern"

    .prologue
    .line 353
    const-string v4, "SmileyParser"

    const-string v5, "addSmileySpans"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-nez p1, :cond_0

    const-string p1, ""

    .line 355
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 357
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 359
    .local v3, matcher:Ljava/util/regex/Matcher;
    if-eqz p2, :cond_2

    .line 360
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 368
    :goto_0
    const-string v4, "SmileyParser"

    const-string v5, "matchKey start to find"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 370
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, matchKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToBitmap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 372
    const-string v4, "SmileyParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmileyToBitmap contains matchKey >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToBitmap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 376
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 377
    const-string v4, "SmileyParser"

    const-string v5, "bmp != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 362
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #matchKey:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    if-nez v4, :cond_3

    .line 392
    .end local p1
    :goto_2
    return-object p1

    .line 365
    .restart local p1
    :cond_3
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 382
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #matchKey:Ljava/lang/String;
    :cond_4
    const-string v4, "SmileyParser"

    const-string v5, "bmp == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToBitmap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 384
    const-string v4, "SmileyParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmileyToBitmap >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToBitmap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_5
    const-string v4, "SmileyParser"

    const-string v5, "matchKey > not match"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 390
    .end local v2           #matchKey:Ljava/lang/String;
    :cond_6
    const-string v4, "SmileyParser"

    const-string v5, "matchKey end to find"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 392
    goto :goto_2
.end method

.method public hasSmiley(Ljava/lang/CharSequence;Z)Z
    .locals 3
    .parameter "text"
    .parameter "withIMEpattern"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, flag:Z
    const/4 v1, 0x0

    .line 406
    .local v1, matcher:Ljava/util/regex/Matcher;
    if-eqz p2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 411
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 413
    :cond_0
    return v0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0
.end method
