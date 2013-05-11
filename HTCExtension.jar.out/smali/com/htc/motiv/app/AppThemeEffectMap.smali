.class public Lcom/htc/motiv/app/AppThemeEffectMap;
.super Ljava/lang/Object;
.source "AppThemeEffectMap.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdFromIdName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    const/4 v0, -0x1

    return v0
.end method

.method public static getIdNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getThemeEffectNameById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listNotification()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listRigtones()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
