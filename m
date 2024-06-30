Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819666F2EB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Jun 2024 22:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719786162; cv=none; b=C26VIxUstiHgmByJcei9wfcHOqom1BTQAefRi8zT4fLtXHeBpIfmOq/MQ3BSVN5LT9Y3rth3MXD5h/1ZUjMj21SdyBmQJEvrDlz6JVIDbZjrDjGuQOmu/uUS1/pvWb9ZkJPnnYLMMckDsFrsmr9vPh+rR41Un7ho1pXOUMR0Bkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719786162; c=relaxed/simple;
	bh=hTXHJnTec+o1Imka4iToibRRGRzej4nqS8CkVNOyiDA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Resra2+M7tsmoMDPu5ywKe51jFL5eLv+l1m2Esy9+AVzteg8DHSn0c1gMwYLwdT6AcOnWLPJ1vnxQp3Oszo1lbsjXn93DSkHO1TuF12XbFevq5NxQU4M1dljNm6rUFN8wfYumeAUgGjX35tyTbYrKTt4XutSCBDVp0C9+Y3yb0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1719786162;
	bh=hTXHJnTec+o1Imka4iToibRRGRzej4nqS8CkVNOyiDA=;
	h=Subject:From:To:Date:From;
	b=wZnbXeXW5BafYHXPs2bJ9pdtTqaF1V5+NC5/rkH9hGyWd9j4Hcc1bZEcDB481+gpz
	 +iWwSHYqy5PPpO9XPB7moNgRuuTqPcez7RWKN5eNxM09V/1DBmyQ9XFnZb6wFXPPvI
	 +j3D8BsP8l2ulwR0QKH1s46OlhviKaS/Id8Z0pGs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D08DC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Jun 2024 22:22:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 1021ECF3B95
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Jun 2024 22:22:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 30 Jun 2024 22:22:42 +0000
Message-Id: <20240630222242.release-6.10-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc6/v6.9

Linux kernel version 6.10-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc6/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc6/v6.10-rc5

