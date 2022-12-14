//=============================================================================
//
// ポリゴンの処理 [scene.h]
// Author : 佐藤瞭平
//
//=============================================================================
#ifndef _SCENE_H_
#define _SCENE_H_

#include"main.h"

//*****************************************************************************
// オブジェクトクラス
//*****************************************************************************
class CScene
{
public:																// 誰でもアクセス可能
	CScene();														// コンストラクタ
	virtual~CScene();												// デストラクタ
	// メンバ関数
	virtual HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size) = 0;	// ポリゴンの初期化関数
	virtual void Uninit(void) = 0;									// ポリゴンの終了関数　
	virtual void Update(void) = 0;									// ポリゴンの更新関数
	virtual void Draw(void) = 0;									// ポリゴンの描画関数
	static void ReleaseAll(void);									// すべてのオブジェクトの開放関数
	static void UpdateAll(void);									// すべてのオブジェクトの更新関数
	static void DrawAll(void);										// すべてのオブジェクトの描画関数

protected:															// 自分と派生系のみアクセス可能
	void  Release(void);											// 1つのオブジェクトの開放関数

private:															// 自分だけがアクセス可能
	// 静的メンバ変数
	static CScene*m_pTop;											// 先頭のオブジェクトのポインタ
	static CScene*m_pCur;											// 現在(一番後ろ)のオブジェクトのポインタ

	// メンバ変数
	CScene*m_pPrev;													// 前のオブジェクトへのポインタ
	CScene*m_pNext;													// 次のオブジェクトへのポインタ
	bool m_bDeath;													// 死亡フラグ
};
#endif
