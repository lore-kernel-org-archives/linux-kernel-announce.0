Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C6C1D416B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729171542; cv=none; b=Gx8uoWujCIFReaA/LHC+M0LZGXE7viYwIQRDTSGcSYYGfWsy0VWCROCGstfnImeu7XGxx0q7bjLkHO1KU9ZyBk0UytcfNT/z8mk6GahtSUF51BLF3MBrNDI8M3qjq99CIbWCmIq1sAfCpWbJbaXKTU9O5BybMnlOqkeag8IltBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729171542; c=relaxed/simple;
	bh=T0b/6pNvzCaEUePeUSrq7q/6JGZwqeq9WtiaKISWXsc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XTMqMeb1ibS6N7O3xxaI6Uuntdm0rS7TZLbQKAGYgnvJdcjz3qYggL4frtWT0wg3xOqY6tbTdgZWagT+L3SSlNIRMMEYK6Rj+V9aViM+qMrsjZeSzqokk44KqXlQKs0mFsLLD/m2oBNcnPvM8kvGQfB7JsTVEtbDhnBWIIBxQDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729171542;
	bh=T0b/6pNvzCaEUePeUSrq7q/6JGZwqeq9WtiaKISWXsc=;
	h=Subject:From:To:Date:From;
	b=XjH06NUUoaa9LgLi23+KEXVQRGCaD4FT4goWTo2Q+Hnafe7Iah40kQLrwRUFNLw8I
	 BKepuHyhAzmEo5jurAXmHrRzOKo1z+crTH8ECJ60jKav2GC7aaofdfZO9CcaJZ0uDK
	 4lxM9piUzqsP0Ko6uZtHe3BHvOwhbcNXXdIU64TQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E67C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:25:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 791083809A8A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:25:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.227 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Oct 2024 13:25:46 +0000
Message-Id: <20241017132546.release-5.10.227@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.227
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.227.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.227.xz

Linux kernel version 5.10.227 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.227.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.227.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.227.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.227/v5.10.226

