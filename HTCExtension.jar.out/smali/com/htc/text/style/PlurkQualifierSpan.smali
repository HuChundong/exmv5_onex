.class public Lcom/htc/text/style/PlurkQualifierSpan;
.super Lcom/htc/text/style/PlurkQualifierBaseSpan;
.source "PlurkQualifierSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final QUALIFIER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field private static final QUALIFIER_V1_PREFIX:Ljava/lang/String; = "qualifier_s_"

.field private static final QUALIFIER_V2_COLOR_PREFIX:Ljava/lang/String; = "qualifier_color_"

.field private static final QUALIFIER_V2_COLOR_SUFFIX:Ljava/lang/String; = "_normal"

.field private static final QUALIFIER_V2_DRAWABLE:Ljava/lang/String; = "qualifier_drawable_bg"

.field private static sBitmapCache:Landroid/graphics/Bitmap;

.field private static final sQualBitmapCache:Ljava/util/HashMap;
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

.field private static final sQualColorCache:Ljava/util/HashMap;
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


# instance fields
.field private mAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

.field private mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/htc/text/style/PlurkQualifierSpan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->LOG_TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualColorCache:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sBitmapCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8
    .parameter "context"
    .parameter "qualifier"
    .parameter "trans_qualifier"
    .parameter "font_dimension"

    .prologue
    const/4 v6, 0x0

    .line 95
    sget-object v4, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V1:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;FFF)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 8
    .parameter "context"
    .parameter "qualifier"
    .parameter "trans_qualifier"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    .line 101
    sget-object v4, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V1:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;FFF)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;FFF)V
    .locals 17
    .parameter "context"
    .parameter "qualifier"
    .parameter "trans_qualifier"
    .parameter "assetver"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/htc/text/style/PlurkQualifierBaseSpan;-><init>()V

    .line 109
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/text/style/PlurkQualifierSpan;->mAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    .line 112
    :try_start_0
    const-string v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/style/PlurkQualifierSpan;->mAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    sget-object v3, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V1:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_2

    .line 114
    const/16 v16, 0x0

    .line 117
    .local v16, res_id:I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qualifier_s_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "drawable"

    const-string v6, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 128
    :goto_0
    :try_start_2
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 133
    .local v4, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_1
    new-instance v2, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    sget v5, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->NOCOLOR:I

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;FFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    .line 200
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #res_id:I
    :cond_0
    :goto_2
    return-void

    .line 135
    .restart local v16       #res_id:I
    :cond_1
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 147
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #res_id:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/style/PlurkQualifierSpan;->mAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    sget-object v3, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V2:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v2, v3, :cond_0

    .line 148
    const/4 v13, 0x0

    .line 149
    .local v13, colorResId:I
    const/4 v14, 0x0

    .line 150
    .local v14, drawableResId:I
    const/4 v8, 0x0

    .line 152
    .local v8, color:I
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qualifier_color_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_normal"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "color"

    const-string v6, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "qualifier_drawable_bg"

    const-string v5, "drawable"

    const-string v6, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    .line 171
    :goto_3
    :try_start_4
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sBitmapCache:Landroid/graphics/Bitmap;

    .line 178
    :cond_3
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sQualColorCache:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 186
    :goto_4
    new-instance v5, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    sget-object v7, Lcom/htc/text/style/PlurkQualifierSpan;->sBitmapCache:Landroid/graphics/Bitmap;

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;FFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 197
    .end local v8           #color:I
    .end local v13           #colorResId:I
    .end local v14           #drawableResId:I
    :catch_0
    move-exception v15

    .line 198
    .local v15, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Instantiated without a valid PlurkQualifierDrawable!"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 183
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #color:I
    .restart local v13       #colorResId:I
    .restart local v14       #drawableResId:I
    :cond_4
    :try_start_5
    sget-object v2, Lcom/htc/text/style/PlurkQualifierSpan;->sQualColorCache:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v8

    goto :goto_4

    .line 168
    :catch_1
    move-exception v2

    goto :goto_3

    .line 125
    .end local v8           #color:I
    .end local v13           #colorResId:I
    .end local v14           #drawableResId:I
    .restart local v16       #res_id:I
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public static checkAssetsVersion(Landroid/content/Context;)Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;
    .locals 5
    .parameter "context"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, resId:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "qualifier_drawable_bg"

    const-string v3, "drawable"

    const-string v4, "com.htc.socialnetwork.plurk"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    if-nez v0, :cond_0

    .line 227
    sget-object v1, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V1:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    .line 229
    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V2:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    return-object v0
.end method
