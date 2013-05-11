.class public Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
.super Ljava/lang/Object;
.source "PluginRegistryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/PluginRegistryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComponent"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public cName:Landroid/content/ComponentName;

.field extra:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getcName()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setcName(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "cName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    .line 341
    return-void
.end method
