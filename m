Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1D121ABC1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746166807; cv=none; b=nnQsAs+zTgzhsabwXutlZSKsfR7Usp9uUBY4SihasocUKYfDsMawSuR6/2N+e66bWgl+L8TfOXOcIBI4QJr+P0ME3Khsn01eb0KMaZTSAYxNquHSp2L86GnyBkwiWFeoFbjjU4Q17hIAvxvHRONOkU1E0oHRNzMZqA+tGkkT8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746166807; c=relaxed/simple;
	bh=z3+HHIrOuOaR1h+z95ze0KYOQoxliLH/6G9AYHiTycY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bQmIZBAzthCVE1QYv1FpiOEvDlvRO2PM491a8uUqbwGvoFT/HKNt23Lt/yn+x8n9AnGszGK+wgofFAO0Y0Kgz3hQwf3lwzQHXJJVRVKl3uTrlsn3nOO602vceTxAwdunSXt2n1HrlKWiScPNEsbs6HmHNmDv1xHG4SMDX5fk9WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746166807;
	bh=z3+HHIrOuOaR1h+z95ze0KYOQoxliLH/6G9AYHiTycY=;
	h=Subject:From:To:Date:From;
	b=Kvz2vVm1XA3IukIbEfCVVVl/DqhfAqhg45jAsCdQTyDmHHmZvfMoF2pZQdtubx9Hb
	 ameN1nlugbJ1QwYw69uKPYXGMEhuhIXgzrtAJdbrwaoLGmNbiKMOi1j8xZ+m6Mnjb5
	 5PkALrXnr6K5eCqR5moKEKZS4m/Ka/5FYywxrQ5E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F00B9C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37A913822D61
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 06:20:45 +0000
Message-Id: <20250502062045.release-6.14.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.5.xz

Linux kernel version 6.14.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.5/v6.14.4

