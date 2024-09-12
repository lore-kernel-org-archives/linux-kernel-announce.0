Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9314719F10B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134654; cv=none; b=GWHdyxElgLNr5kANSiRzK3h0JxX/dPx3lPw3K4ijsh68sTZUzG+aJCBvnXqcFc33LkN7xmhhgpMAum17QABluDiEnx/jKcydGtNwdo35LCj6lHroQW5ux/R/58N+ve+ccDLScBHoZufokmdMB7rtG1cnPh092kiUr/9gHlmc0To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134654; c=relaxed/simple;
	bh=QUzHmcyi5N3a/sKFia4iMat4q5tSpA4s+yZBIxCHoc4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YI8xpwP7ndTLLd13fS9O5PxyQILv3bN1scDOKzn51uzWgrEm38Z2J6wQcVeoFMhFGUJ9PW0W4a86P5Lzb/H+WZPbUmwmxJnZuAYZh//oJOuQQXmTKhw+PT0xRHR6BKXxU+Mu244xJhRnGtYGhONhWcCsc5fRqF+x96zsdUalK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134654;
	bh=QUzHmcyi5N3a/sKFia4iMat4q5tSpA4s+yZBIxCHoc4=;
	h=Subject:From:To:Date:From;
	b=tPmMGg486dNssWFxXOD/6ZP2U3laJmKRkSnPrprHwCoG4uEVM1pjTjubhhJP58IVQ
	 kjLVJMtx1bHzoROHI4FAKcKMKoamvMeBIgDzyrGBSLXPFMeYGEveEFsoKqQojlVUVn
	 uA04SXFk798y9WS7xizcb/rtx/EbMC9Lc3k8AYh8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C063C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADE163806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.51 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:50:55 +0000
Message-Id: <20240912095055.release-6.6.51@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.51
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.51.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.51.xz

Linux kernel version 6.6.51 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.51.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.51.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.51.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.51/v6.6.50

