.class public Lcom/scalado/caps/autorama/TemplateMatch;
.super Lcom/scalado/jni/JniPeer;
.source "TemplateMatch.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCreate()V

    return-void
.end method

.method private native nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeGetTranslation(Lcom/scalado/base/Vector;)V
.end method

.method private native nativeSetRegion(Lcom/scalado/base/Rect;)V
.end method

.method private native nativeSetTemplateRegion(Lcom/scalado/base/Rect;)V
.end method


# virtual methods
.method public calculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/base/Vector;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V

    new-instance v0, Lcom/scalado/base/Vector;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Vector;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeGetTranslation(Lcom/scalado/base/Vector;)V

    return-object v0
.end method

.method public setImageRegion(Lcom/scalado/base/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetRegion(Lcom/scalado/base/Rect;)V

    return-void
.end method

.method public setTemplateRegion(Lcom/scalado/base/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetTemplateRegion(Lcom/scalado/base/Rect;)V

    return-void
.end method
