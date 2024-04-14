Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A21134CE0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Apr 2024 21:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713129438; cv=none; b=tfEt5qqyWA6IMwq3OIDkvD9kvHmaLhx2U7rhFuXlLz1rwWr5luBWpvDn+e8qSIuh+x5i9SgzpXAxj4hKRgI8idm3PwVaWf7JkQ1CpS5mmLWj9/w6y4YVGWQZG4IccsFLQZtCcOql3IzPLcu0tBucpLv5d0iWMexIsK5EUmzA8Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713129438; c=relaxed/simple;
	bh=8izEvUKIkRHuDiHQd+C33MGqYlB6PqNb0BiSkkP+soE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SgUB/zJ5b1/dOf85m39PgeC0bGa1jatvAcfFjdMYXfUIcWfmJopSPJNzoNTTwk4jePKjPJ0dLPjG7NFputcLpNxLu8DbULVh8OyKJt3lraabP56DYoCG5LowJ35AhFAd5SYEKll84BuFONo1ZiwheyhX30DuauxwWjZWBPFVT5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713129438;
	bh=8izEvUKIkRHuDiHQd+C33MGqYlB6PqNb0BiSkkP+soE=;
	h=Subject:From:To:Date:From;
	b=dbSJoIOjTDc6uEA7ApHmjejb46kXwQPzIlhFIowHwRiqIXGG75KlzaC7IToASJwkY
	 7oqwpBAKRc/GfuOtiymFgDYKCcymL1dcVXj+dipADtqGa7ji0CgdhHvX0K1hrtaNnm
	 nrYEvDZlsSM3v1y8f8wq1nH/aIUauI8oHbL0iFfA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2946C072AA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Apr 2024 21:17:17 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A3E46C32750
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Apr 2024 21:17:17 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 14 Apr 2024 21:17:17 +0000
Message-Id: <20240414211717.release-6.9-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc4/v6.8

Linux kernel version 6.9-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc4/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc4/v6.9-rc3

