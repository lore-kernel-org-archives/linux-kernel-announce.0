Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB99514D711
	for <linux-kernel-announce@vger.kernel.org>; Tue, 21 Jan 2025 09:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737450326; cv=none; b=r/JaeRA5B5MXqbEsRU6GVl11E4p08piMicAk0pkNBV0bU8Mpae5pExXKQ0iH/8E073z2zLqUqMYjTErdVF0dyBevbFFpiQQfLGxePbr4RPJjdodNQT37R0+Ykac1c9fJ4KcNPuSgtq6ty116BhR6dNa5n/Jo0H3H6pTdMyuwZJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737450326; c=relaxed/simple;
	bh=xuLIrphGoVtAwbKzKQlfDkEm2NfsyHBlewCfDyCm13M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QJ7J1kvAkeTHuv0JF8XaJd3H8FLj6zdWpe+0/iIfJKROBTrlyM7BRnwi70dOvCMIYcgjN7bwxA4QwZBCGE+yRSpZRhrTz4yVAyL34X4ZQZxjvLUfPGdHnJk8DPazqBBSXVoSCeyA+DgQ7rWfWfQ6L5rbA8CuNi4Lvu136hShv+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737450326;
	bh=xuLIrphGoVtAwbKzKQlfDkEm2NfsyHBlewCfDyCm13M=;
	h=Subject:From:To:Date:From;
	b=cI8HXVd4IdGDgkjYHP4egyFtS1qrAtpk9wANbkgHuQCyWdnBwpN2eO/5XHSiGuprK
	 L0nNJe782DLifvxCTcB1BuKeIagYri0jr8i+lQpbf+ZN9Lu69m91fhct2a3a18+4v1
	 1stlbWX18TqvpnZ/cXF3XLP4SLG9PnuuTTFeSWSI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B028C4CEDF
	for <linux-kernel-announce@vger.kernel.org>; Tue, 21 Jan 2025 09:05:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5AD6380AA75
	for <linux-kernel-announce@vger.kernel.org>; Tue, 21 Jan 2025 09:05:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.73 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 21 Jan 2025 09:05:49 +0000
Message-Id: <20250121090549.release-6.6.73@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.73
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.73.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.73.xz

Linux kernel version 6.6.73 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.73.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.73.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.73.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.73/v6.6.72

