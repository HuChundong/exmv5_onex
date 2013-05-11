.class public Lcom/htc/lockscreen/internal/LSUtil;
.super Ljava/lang/Object;
.source "LSUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "LSUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resContext"
    .parameter "resId"

    .prologue
    .line 75
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIconBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/internal/LSUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 61
    .local v3, pkgContext:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, id:I
    if-lez v2, :cond_0

    .line 64
    invoke-static {v3, v2}, Lcom/htc/lockscreen/internal/LSUtil;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    .end local v2           #id:I
    .end local v3           #pkgContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LSUtil"

    const-string v5, "getIconFromPackage exception"

    invoke-static {v4, v5, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/internal/LSUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 41
    .local v3, pkgContext:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, id:I
    if-lez v2, :cond_0

    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .end local v2           #id:I
    .end local v3           #pkgContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LSUtil"

    const-string v5, "getIconFromPackage exception"

    invoke-static {v4, v5, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 24
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 27
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 29
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method
