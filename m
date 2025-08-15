Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0472622576C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254725; cv=none; b=hwMCcCpPanY0YR7fFdWYPeT7BLQ8oCAtALJYpLGppv7pCfPn3xSCOzegqi+R9Wa4Pm15EjE9np4zm4Rqe4vWgvoRq3qeJvUjaQxn7FwdoAXy3XbMPwOLBoxsidAQjE/uadGo5IpR5fVfynI0uMT6/OJhTQGgNIPUgbiSveDd1KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254725; c=relaxed/simple;
	bh=BcJenJ+hi4zvI/v4GoA0ROkKzoFm13pFharWodwNjnU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nI596kFBV1WfTMWhvht0gDjK1XgAcCxq0ZbQLe/HMrMV3f93tP94EAflFu1OdO7bbYoyzkmKqbGQi9BC/2u69VwtbPs9XyoRpL7BfTJxEYVRO6OvoFme9GeZm9iQAPInZ1sgGGCSazvk4uzYJFr9ch7Up/f5D6hb8eATo/Yrb1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755254725;
	bh=BcJenJ+hi4zvI/v4GoA0ROkKzoFm13pFharWodwNjnU=;
	h=Subject:From:To:Date:From;
	b=cQGz6V38txj1At6ervEL7H/A5kJph0b0tMdOAP0WRL4M3ohJZCTvV57JUbGonnu0l
	 z7l/TZUo4DMI1jV9STuh8sfkEtpyFQgTVC6IDW/TYYzJfaocb0EkVe6vH9J5h5TR9n
	 DzkhlX+Bbud7N74GNcCR5sRALi7aoslF9UOhK3jE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3198C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE92D39D0C3B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Aug 2025 10:45:35 +0000
Message-Id: <20250815104535.release-6.15.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.10.xz

Linux kernel version 6.15.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.10/v6.15.9

