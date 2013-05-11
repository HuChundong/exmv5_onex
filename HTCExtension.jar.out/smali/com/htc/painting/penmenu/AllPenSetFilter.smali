.class public Lcom/htc/painting/penmenu/AllPenSetFilter;
.super Ljava/lang/Object;
.source "AllPenSetFilter.java"

# interfaces
.implements Lcom/htc/painting/penmenu/IPenSetFilter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AllPenSetFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/PenTypeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, penTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    const/4 v5, 0x1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 25
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v1, v5}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    .line 27
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 28
    const-string v2, "AllPenSetFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter - filter out pen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    .line 34
    invoke-virtual {v1, v5}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setEnabled(Z)V

    goto :goto_1

    .line 38
    .end local v0           #i:I
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_2
    return-void
.end method
