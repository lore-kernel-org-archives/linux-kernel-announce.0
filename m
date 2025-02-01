Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C761C3BEE
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738433123; cv=none; b=uMCz1FP35J0tkH/D/YvwDxwmZ1eXlKeG0MqlfDOyv02S0aerCWlZGCvPcfJ6JwHik4+DCT9B6G18mN49S5erFhURHHOocQ1r9en4ycbj+PCFFQ8cba9ltmJHVAAf01H05ZDTHlgAxKI5lmgAhfGXN8LjgO3UcvYqt/cx6Vq9FXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738433123; c=relaxed/simple;
	bh=h3qEPHRGZiBABPmuxBD0+AdDepOpZzi3vF2Sr95bBbk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZsRcAogsEb9pmt0rc8uixSnAatepno7iJjAuQtfGqNqtzgl3wObq4+79z7FCXrr6Kuz7QOgljvBKH5Qnqw5gE7uG4jZg36JCgUMDqjFLZpR9QaGDBeqHYwBZLGw1Ftb81QDF5P8wek22QuKpKh0f8z5/pstJpNXpbQjbkZZyWDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738433123;
	bh=h3qEPHRGZiBABPmuxBD0+AdDepOpZzi3vF2Sr95bBbk=;
	h=Subject:From:To:Date:From;
	b=VRyU/+6ouwTSe18ha3ZimniyUpCGocmo0M4y5nm46dY6EyT3RmKRKseg6ItNNw/Co
	 HCEjbdOgyqaP+2zecGkyYJ9Ib6/IMGHO8apsF3eL1sdDqpdWoXxlnIc8AnULAFZwfn
	 /hBlNuaFEKXVuqZmNvOGRV5pZ+j632o5gYQKjv0E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8070CC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:05:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A825380AA68
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:05:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 18:05:48 +0000
Message-Id: <20250201180548.release-6.12.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.12.xz

Linux kernel version 6.12.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.12/v6.12.11

