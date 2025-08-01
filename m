Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1EC14F70
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754040025; cv=none; b=O5maUc4yO+xusl7fMhTxtqS62lknUh/RArHkluhpwwC2zLxcCL4IKXc+7vRQtC4LoCC/LmFRHpj6t3AinjWG4HWtnWD2uS2/5YsJ+VzC/k9BCsL7r1X6ELHkLS5TR4QA06g3DZxsiKHtkBrElh78SNnt/BTkihQSEgkUALoytiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754040025; c=relaxed/simple;
	bh=zN76gHkNYcjx3BkrSoxgoUdPHw64cxzepVogxNrQIR0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=L+CtgvhoiQXt77rsh/6fa8Zgyz4peo08C0dV724EbldQ6CrZ9D+CuhtRzGLC62sF3iVeFQCQ2Q4b9miOI4mmJpVohsNjY+LMxlJgWxJU2/3TzWyRvoP8LmhABwUOqxwpRTkjVIB2Q1+JhPtBVmRw0RwEqQPaXV6IhtaZdz0xsKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1754040025;
	bh=zN76gHkNYcjx3BkrSoxgoUdPHw64cxzepVogxNrQIR0=;
	h=Subject:From:To:Date:From;
	b=sOsDtXQDsQv81xFFCp+30NAjlmhWIlv9QNm4IxK4x0ILeKd7vkkF4ydvjVu/nRYNI
	 WCNGJqR8uNv5yZlrVFb7Vde8IF/PCMqVz5yjxxRMLVChhtogRX++4afbGMjiiJKfVR
	 Xm87ByI92Se2kfys/4umzwIcJtWaqi/V4to5eE0M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCE25C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:20:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74F29383BF56
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:20:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Aug 2025 09:20:40 +0000
Message-Id: <20250801092040.release-6.15.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.9.xz

Linux kernel version 6.15.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.9/v6.15.8

