Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F1C225A40
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744014903; cv=none; b=qpvsic2YzSV8u08tM31BXlS5xB32LCF/MgCjNLURUCN/HQO+bDcdBj0HSM0vhgNnCmgduGZcVEDKoqAr8eYFl2opbXuETo4PEiHvwX5ypw4OeiOyihozlsohA1UatO3Ig+LzzvH6Pz51BQYnpVs0b9hNwyx6wGq8XYjiiZkhfho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744014903; c=relaxed/simple;
	bh=KAzoxb5nl5ImQywrJ5W2YKY+VHCNkDNeE6HoHdDP6D0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KC2L6RLl0DqaccL38N2Sd3irgK87vwuT4e1zXAynGRqKRPvWLGadLFD/DLHe1P8gGA8FG0Ue0vUzIeMXaPz9Aym+htba1SH6xzmSV/xldBVZXGEN4BAePGdrbCejv45SCPXaPHVfyFisJsatP7ifOfAPzGNr/6+7thr7g9cQmKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744014903;
	bh=KAzoxb5nl5ImQywrJ5W2YKY+VHCNkDNeE6HoHdDP6D0=;
	h=Subject:From:To:Date:From;
	b=d1GJHXViwx+O0doCpOEAYinKcVONcKbC8FFECGltadHs+Nw7mSJtM1aM7dOiaB480
	 zxJSF8b2v+RHZRF5+qgq7oYML3cXDa5uWUctrzjDe38BtkhVv/izjCb/dfaGzDYNcZ
	 3Lvq0NvqzoZFln+aDIs4bMUtqf160CumYqJ7NA/k=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF55C4CEE9
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:35:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 378573804CAE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:35:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.22 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Apr 2025 08:35:39 +0000
Message-Id: <20250407083539.release-6.12.22@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.22
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.22.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.22.xz

Linux kernel version 6.12.22 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.22.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.22.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.22.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.22/v6.12.21

