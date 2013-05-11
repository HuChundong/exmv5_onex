.class public Lcom/scalado/jni/JniCommonLibLoader;
.super Ljava/lang/Object;
.source "JniCommonLibLoader.java"


# static fields
.field private static msLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/scalado/jni/JniLibLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/scalado/jni/JniCommonLibLoader;->msLoaders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibLoader(Ljava/lang/String;)Lcom/scalado/jni/JniLibLoader;
    .locals 3

    sget-object v1, Lcom/scalado/jni/JniCommonLibLoader;->msLoaders:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/jni/JniLibLoader;

    if-nez v0, :cond_0

    sget-object v1, Lcom/scalado/jni/JniCommonLibLoader;->msLoaders:Ljava/util/Map;

    new-instance v2, Lcom/scalado/jni/JniLibLoader;

    invoke-direct {v2}, Lcom/scalado/jni/JniLibLoader;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/scalado/jni/JniCommonLibLoader;->msLoaders:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/jni/JniLibLoader;

    return-object v1
.end method

.method public static loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V
    .locals 1

    invoke-interface {p0}, Lcom/scalado/jni/LibLoaderSettings;->libName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->getLibLoader(Ljava/lang/String;)Lcom/scalado/jni/JniLibLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scalado/jni/JniLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    return-void
.end method
