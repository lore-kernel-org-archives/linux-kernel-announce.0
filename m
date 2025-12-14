Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95DBDF6C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Dec 2025 07:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765696230; cv=none; b=mtRr1bxrb18pVtTlC/i02GPshbbICW3jx4nzKVK4KeEoh4UlX0TpJTCi5MqH7raG0TEaF8DzlGcK3Nj77iZAlGUeCdCSOEEwAtEsioBOI/DRVQsVN2RAyOtNuN+PaAKHtQKhJqUr5/XhPI3a2zCiCYfgLmxb7by74KhxEvwUI3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765696230; c=relaxed/simple;
	bh=YpqhcHUoQ08V2/O3XMnOCwVVzH/Nf5En5FJ5t/CdD1Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RlsjiYWZ42TQReDgJcpfuOH6s4ubFMSocnNWMh5+F08LE3+NxX17AY7r/vNukxdAkbhhhunZ0gXTriWU5CMfluqwyRcUQWBGVH3V/WymI+VpZRc/vqbXI5+MGjMg6fngnzTBr5bx2oLfd18AqC6OXsyrGwUiPbIW0FOg2yK8wBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765696230;
	bh=YpqhcHUoQ08V2/O3XMnOCwVVzH/Nf5En5FJ5t/CdD1Q=;
	h=Subject:From:To:Date:From;
	b=Xp+9BUAh3dIDYmgnmkSiIn4YwfxHKV6eARbGHLZdxBNRswgW0Inrn3bCJ/RB/Wuda
	 FV2Op+ffJtyGioOlAFtjvmmwDTt/H7Qyg6mVC5AAuXPMVyk3ueUgccImeQ2fl3InZ3
	 DMkuDq6ZJnAxtfpgGNTovAHJDfx0ot1TuTCImy6E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FC02C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Dec 2025 07:10:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BAB69380A95F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Dec 2025 07:07:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 14 Dec 2025 07:07:22 +0000
Message-Id: <20251214070722.release-6.19-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc1/v6.18

Linux kernel version 6.19-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc1/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc1/v6.18

