Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2379929405
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Mar 2026 00:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773015649; cv=none; b=gugbvJj1Z7C9ZsqIkv7ikeS0/+8f/eqDrtPr8nhVBVAi0f7p7V8vTexJyL6yCCMNO/f1MpxW9WQkOKUw2S8Ecapc0qZk2cnDqvwSpP8PAO7YSz9JAG/5VdzvdhnRk307ELmQ4B4hinTHucBe5mZQ1pM+Iym9ospfPgIHdWLnV3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773015649; c=relaxed/simple;
	bh=034+ob0Zs2Moc92fFaYpnZiunB20e8L4Uk+7ftMvidA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UMnIU8Zu+KLDnk9AEplBM/BRply7EoL2ufDzSpkeXmfImL70iXJMSTZMXyBf5hvG63nKZFrap8PBgSmI+GtW/kdv2oxz8FaTZHqGK7R2WOqns+kUl71YztGdi287psgYgjnuNqJXcU8RFYbAbEo7wRdvUYmbDZEz/1cplc+Zv0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773015649;
	bh=034+ob0Zs2Moc92fFaYpnZiunB20e8L4Uk+7ftMvidA=;
	h=Subject:From:To:Date:From;
	b=UE46RFHFNTO6BMJDBgGFehLq+/+9mYe1ACXroL0TFQ6sepr6c26pkmNGM8Ycu232M
	 p2k5ylIgTNSyrw+4WgB/rSntFEDlckD9rH6V9JMbPPHc9mSHcSAKKL+JuxqTYK0Pqv
	 sWcAyMcq38ErGHTrpvg76vj5n82ZFjgkf4XAMySA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6E90C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Mar 2026 00:20:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCB0A3808200
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Mar 2026 00:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 09 Mar 2026 00:20:46 +0000
Message-Id: <20260309002046.release-7.0-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc3/vNone

Linux kernel version 7.0-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc3/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc3/v7.0-rc2

