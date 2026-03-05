Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE88E3CB2E1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772725219; cv=none; b=RjWoZLq4xcBHgev/GBOLc0dmcqjaSBwcO+JGcqtTYMWwSiPDuVhTOaPhsjnGCojSpeMiRadmVLn/LYXhIds+B7hG6OA8nTppvCQqaKu5fQReGRYBngpZfLLJyfuawWJnau9MfoFFWmW9gUV7QHuLb6XZAzMXW768gySwku/aZaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772725219; c=relaxed/simple;
	bh=KYRFtf6gY5+aTRtJfPkgUcZF0zpZjOaxAmUyvLtl/cU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ErYg13bQPdL9bW6hMype0QorS5YoL6wXMkgebziWC00op9VdI0mc0CEq88tHkmLby+/6ohDDC01LU5aajQEuqFTn2vPqrTJQy4qHnbtVrJemXODRbpS8XYFkfAlhZOQn1cgTh29p3cw2sgGqd4CSAzUIXNqSs/XpS0ozavUObFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772725219;
	bh=KYRFtf6gY5+aTRtJfPkgUcZF0zpZjOaxAmUyvLtl/cU=;
	h=Subject:From:To:Date:From;
	b=rBK1EVP5Yx3J+jwqFpApNjkpKYxGM7aaV5T9RipRmWV39z2GP1+ZowMhSCi2fwvQ/
	 y6juig7UNLoJRs4+Dd3fZXcl77hMu8udBZXh0Q+IF8zLL/54HZFCwIB2ZbnyhQDEME
	 Olx1Y4SOwvnnxvlxGQOQnhhiJ2ApgKwMdIBlV4aI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FEE6C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:40:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BA1F23808200
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.166 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Mar 2026 15:40:19 +0000
Message-Id: <20260305154019.release-6.1.166@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.166
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.166.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.166.xz

Linux kernel version 6.1.166 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.166.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.166.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.166.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.166/v6.1.165

