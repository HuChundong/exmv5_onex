.class public Lcom/htc/opensense/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# instance fields
.field public component_name:Landroid/content/ComponentName;

.field public description:Ljava/lang/String;

.field public feature:Lcom/htc/opensense/plugin/Feature;

.field public id:I

.field public pluginMeta:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "feature"
    .parameter "componentName"
    .parameter "version"
    .parameter "description"
    .parameter "pluginMeta"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/htc/opensense/plugin/Plugin;->id:I

    .line 76
    iput-object p2, p0, Lcom/htc/opensense/plugin/Plugin;->feature:Lcom/htc/opensense/plugin/Feature;

    .line 77
    iput-object p3, p0, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    .line 78
    iput p4, p0, Lcom/htc/opensense/plugin/Plugin;->version:I

    .line 79
    iput-object p5, p0, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/Feature;)V
    .locals 7
    .parameter "feature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Lcom/htc/opensense/plugin/Feature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->feature:Lcom/htc/opensense/plugin/Feature;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/opensense/plugin/Plugin;->id:I

    return v0
.end method

.method public getPluginMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/opensense/plugin/Plugin;->version:I

    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    .line 151
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setFeature(Lcom/htc/opensense/plugin/Feature;)V
    .locals 0
    .parameter "feature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/opensense/plugin/Plugin;->feature:Lcom/htc/opensense/plugin/Feature;

    .line 141
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/opensense/plugin/Plugin;->id:I

    .line 131
    return-void
.end method

.method public setPluginMeta(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginMeta"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iput p1, p0, Lcom/htc/opensense/plugin/Plugin;->version:I

    .line 161
    return-void
.end method
