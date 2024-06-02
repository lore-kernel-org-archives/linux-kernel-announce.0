Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E8910949
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Jun 2024 23:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717371084; cv=none; b=u9jPGExcgmGHoAiZwvw1o6YgXkq902DGVr4heppLZXHsN0FJQsXJtx9tUpi37XadmuIUYimHi3i5mNPCIOrYb7g82jSVLn6yj7sBXELSebNrbdAuPaZ+L9D1ztLqjqREw4ooKmtXlkOlLyj4kHAw66x77qp8zKgGxlmiGWtwrsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717371084; c=relaxed/simple;
	bh=s7xY3B6iT+gXrxDDwdE4Bb9P5amVLb90nmNLIrQ1mVw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KzWHUpCPgzcfWjj7Iap7OvJi9lpdS+IuvrmcLEEw+Xh1mwnj9PtQ1Oxzq9A9y++j4HE8jTW4n0NVbaBNdAtQdZsSpkAr58UfDVXb7GC9eIgLt1JPUipoaM27nJHvYjHP7ZKd+KVFVLowSfiGMdCk2gxgDqb7OVq27ZpEbBnZYMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1717371084;
	bh=s7xY3B6iT+gXrxDDwdE4Bb9P5amVLb90nmNLIrQ1mVw=;
	h=Subject:From:To:Date:From;
	b=s9D7VLRJMtaBaGx1w8ZiaRcVGYAuWRYW6CX7TF533VupxGd+UV2zEiyuCieIikRKM
	 yBN6aVktjUCr3uPOmYy956UpkUAcy6N0W0vFIJfSPU20t8VzY/iQ9UtOFh+bBAm0yy
	 eFjJCnMq0eObjeAjG2cT4GqyHeAyz/3kbYp1Nj9A=
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F4C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Jun 2024 23:31:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9771AD62203
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Jun 2024 23:31:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Jun 2024 23:31:23 +0000
Message-Id: <20240602233123.release-6.10-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc2/v6.9

Linux kernel version 6.10-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc2/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc2/v6.10-rc1

